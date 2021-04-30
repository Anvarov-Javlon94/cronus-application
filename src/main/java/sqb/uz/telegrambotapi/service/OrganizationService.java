package sqb.uz.telegrambotapi.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import sqb.uz.telegrambotapi.domain.Organization;
import sqb.uz.telegrambotapi.repository.OrganizationRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrganizationService {

    private final OrganizationRepository organizationRepository;

    public List<Organization> getAllOrganization() {
        return organizationRepository.findAll();
    }

    public void save(Organization organization) {
        organizationRepository.save(organization);
    }

    public Organization getOrganizationByName(Organization organization) {
        return organizationRepository.getOrganizationByName(organization.getName());
    }
}
