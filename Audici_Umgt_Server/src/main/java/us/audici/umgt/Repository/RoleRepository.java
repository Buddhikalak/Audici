package us.audici.umgt.Repository;

import org.springframework.data.repository.CrudRepository;
import us.audici.umgt.Models.Role;

/**
 * @author : Buddhika Lakshan
 * @Project : Audici_Umgt_Server
 * @Package : us.audici.umgt.Repository
 * @since : 2020-05-21, Thu
 **/

public interface RoleRepository extends CrudRepository<Role,Integer> {
    public Role findByName(String name);
    
}
