package sqb.uz.telegrambotapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sqb.uz.telegrambotapi.domain.Organization;

@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long> {
    Organization getOrganizationByName(String name_of_organization);
}
