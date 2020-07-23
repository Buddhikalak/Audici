package us.audici.umgt.Exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Exceptions
 * @since : 2020-07-14, Tue
 **/


@ResponseStatus(HttpStatus.NOT_FOUND)
public class FileNotFoundException extends StorageException {

    public FileNotFoundException(String message) {
        super(message);
    }

    public FileNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
