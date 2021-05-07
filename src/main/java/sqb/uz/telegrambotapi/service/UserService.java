package sqb.uz.telegrambotapi.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import sqb.uz.telegrambotapi.domain.Composite;
import sqb.uz.telegrambotapi.domain.Organization;
import sqb.uz.telegrambotapi.domain.Usr;
import sqb.uz.telegrambotapi.repository.OrganizationRepository;
import sqb.uz.telegrambotapi.repository.UserRepository;

import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final OrganizationRepository organizationRepository;

    public void addUserByParam(Composite composite) {
        Usr usr = new Usr();
        Date date = new Date();
        usr.setUsr_full_name(composite.getUsr_full_name());
        usr.setUsr_father_name(composite.getUsr_father_name());
        Organization organization = organizationRepository.getOrganizationByName(composite.getName());
        usr.setOrganization(organization);
        usr.setBirth_date(composite.getBirth_date());
        usr.setBirth_place(composite.getBirth_place());
        usr.setStudy(composite.getStudy());
        usr.setSpecialty(composite.getSpecialty());
        usr.setFamily_status(composite.getFamily_status());
        usr.setChildren_count(composite.getChildren_count());
        usr.setLast_workplace(composite.getLast_workplace());
        usr.setAddress(composite.getAddress());
        usr.setComment_1(composite.getComment_1());
        usr.setComment_2(composite.getComment_2());
        usr.setComment_3(composite.getComment_3());
        usr.setRelations(composite.getRelations());
        usr.setPhone(composite.getPhone());
        usr.setReg_date(date);
        usr.setUpdate_date(date);
        userRepository.save(usr);
    }

    public void editUserByParam(String address, String family_status, String children_count, String phone, String last_workplace, String study, String comment_1, String comment_2, String comment_3, Long id, String relations, String organization_name) {
        Date date = new Date();
        Usr usr = userRepository.getOne(id);
        usr.setAddress(address);
        usr.setFamily_status(family_status);
        usr.setChildren_count(children_count);
        usr.setPhone(phone);
        usr.setLast_workplace(last_workplace);
        usr.setStudy(study);
        usr.setComment_1(comment_1);
        usr.setComment_2(comment_2);
        usr.setComment_3(comment_3);
        usr.setUpdate_date(date);
        usr.setRelations(relations);
        Organization organization = organizationRepository.getOrganizationByName(organization_name);
        usr.setOrganization(organization);
        userRepository.save(usr);
    }

    public Usr getOneById(Long id) {
        return userRepository.getOne(id);
    }

    public List<Usr> getAllUsers() {
        return userRepository.findAll();
    }

    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }
}
