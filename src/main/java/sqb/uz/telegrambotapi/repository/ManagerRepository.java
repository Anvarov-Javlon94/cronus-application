package sqb.uz.telegrambotapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sqb.uz.telegrambotapi.domain.Manager;

@Repository
public interface ManagerRepository extends JpaRepository<Manager, Long> {
    Manager findByUsername(String username);
}
