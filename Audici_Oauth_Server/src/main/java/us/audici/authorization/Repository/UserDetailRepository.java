package us.audici.authorization.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import us.audici.authorization.Model.User;

import java.util.Optional;

public interface UserDetailRepository extends JpaRepository<User, Integer> {
    Optional<User> findByUsername(String name);

}
