package us.audici.umgt.Storage;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Storage
 * @since : 2020-07-14, Tue
 **/
@Data
@ConfigurationProperties(prefix = "storage")
public class StorageProperties {
    private String location;
}
