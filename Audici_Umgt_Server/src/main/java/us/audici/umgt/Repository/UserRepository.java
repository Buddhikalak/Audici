package us.audici.umgt.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import us.audici.umgt.Models.User;
@Repository
public interface UserRepository extends CrudRepository<User,Integer> {
	
    public User findByMobileNumber(String mobile);
    public User findByUsername(String username);
	/*
	 * @Query("SELECT u FROM  User u where u.id IN (SELECT ru.user_id FROM role_user ru WHERE ru.role_id =(SELECT r.id from role r WHERE r.name =:role))"
	 * ) List<User> getUsersByRoleName(@Param("role") String userRole);
	 */
}
