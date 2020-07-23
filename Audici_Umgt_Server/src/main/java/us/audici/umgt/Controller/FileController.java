package us.audici.umgt.Controller;


import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.annotations.Api;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import us.audici.umgt.Models.Response.BaseRestResponse;
import us.audici.umgt.Models.Response.FileResponse;
import us.audici.umgt.Service.StorageService;

import java.io.IOException;
import java.util.stream.Collectors;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Controller
 * @since : 2020-07-14, Tue
 **/
@RestController
@RequestMapping(path = "/api/v1/storage/ws")
@Api(value = "Audici storage Management Api", description = "Check The User Base Api With Swagger")
public class FileController {
    private StorageService storageService;

    public FileController(StorageService storageService) {
        this.storageService = storageService;
    }

    @GetMapping("/")
    public String listAllFiles(Model model) {

        model.addAttribute("files", storageService.loadAll().map(
                path -> ServletUriComponentsBuilder.fromCurrentContextPath()
                        .path("/download/")
                        .path(path.getFileName().toString())
                        .toUriString())
                .collect(Collectors.toList()));

        return "listFiles";
    }

    @GetMapping("/download/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> downloadFile(@PathVariable String filename) {

        Resource resource = storageService.loadAsResource(filename);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment; filename=\"" + resource.getFilename() + "\"")
                .body(resource);
    }

    @PostMapping("/upload-file")
    @ResponseBody
    public ResponseEntity<String> uploadFile(@RequestParam("file") MultipartFile file) {
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.APPLICATION_JSON);
        ObjectMapper mapper = new ObjectMapper();
        BaseRestResponse baseResponse = new BaseRestResponse();
        String responseJson = "";

        String name = storageService.store(file);

        String uri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/api/v1/storage/ws/download/")
                .path(name)
                .toUriString();

        FileResponse fileResponse = new FileResponse(name, uri, file.getContentType(), file.getSize());
        try {
            baseResponse.setError(false);
            baseResponse.setData(fileResponse);
            baseResponse.setMessage("Uploaded");
            baseResponse.setCode(0);
            responseJson = mapper.writeValueAsString(baseResponse);
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.OK);


        } catch (Exception e) {
            baseResponse.setError(true);
            baseResponse.setData(null);
            baseResponse.setMessage(e.getMessage().toString());
            baseResponse.setCode(500);
            try {
                responseJson = mapper.writeValueAsString(baseResponse);
            } catch (IOException ext) {
                ext.printStackTrace();
            }
            e.printStackTrace();
            return new ResponseEntity<String>(responseJson, responseHeaders, HttpStatus.INTERNAL_SERVER_ERROR);

        }
    }

}
