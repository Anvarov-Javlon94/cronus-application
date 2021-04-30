package sqb.uz.telegrambotapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import sqb.uz.telegrambotapi.domain.Usr;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<Usr, Long> {

    @Query(value = "select * from usr ORDER BY usr_full_name ASC", nativeQuery = true)
    List<Usr> userList();

}
