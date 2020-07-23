package us.audici.umgt.Models.Response;

import lombok.Data;

import java.io.Serializable;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Models.Response
 * @since : 2020-07-14, Tue
 **/
@Data
public class FileResponse implements Serializable {
    private String name;
    private String uri;
    private String type;
    private long size;

    public FileResponse(String name, String uri, String type, long size) {
        this.name = name;
        this.uri = uri;
        this.type = type;
        this.size = size;
    }
}
