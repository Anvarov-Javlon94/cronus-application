package sqb.uz.telegrambotapi.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import sqb.uz.telegrambotapi.domain.Composite;
import sqb.uz.telegrambotapi.domain.Organization;
import sqb.uz.telegrambotapi.domain.Usr;
import sqb.uz.telegrambotapi.repository.OrganizationRepository;
import sqb.uz.telegrambotapi.repository.UserRepository;
import sqb.uz.telegrambotapi.service.OrganizationService;
import sqb.uz.telegrambotapi.service.UserService;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping
@RequiredArgsConstructor
public class UserController {


    private final UserRepository userRepository;
    private final OrganizationRepository organizationRepository;
    private final UserService userService;
    private final OrganizationService organizationService;

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userRepository.deleteById(id);
        return "redirect:/data-page";
    }

    @GetMapping("/edit/{id}")
    public String editUserPage(@PathVariable Long id, Model model) {
        model.addAttribute("organizations",organizationService.getAllOrganization());
        model.addAttribute("user", userService.getOneById(id));
        return "edit-page";
    }

    @PostMapping("/edit")
    public String editUser(@RequestParam("address") String address,@RequestParam("family_status") String family_status,@RequestParam("children_count") String children_count,@RequestParam("phone") String phone,@RequestParam("last_workplace") String last_workplace,@RequestParam("study") String study,@RequestParam("comment_1") String comment_1,@RequestParam("comment_2") String comment_2,@RequestParam("comment_3") String comment_3,@RequestParam("usr_id") Long id,@RequestParam("relations") String relations,@RequestParam("name") String organization_name){    userService.editUserByParam(address,family_status,children_count,phone,last_workplace,study,comment_1,comment_2,comment_3,id,relations,organization_name);
        return "redirect:/data-page";
    }





    @GetMapping("/add-user")
    public String addUserPage(Model model) {
        model.addAttribute("organizations", organizationService.getAllOrganization());
        return "add-user-page";
    }



    @PostMapping("/add-user")
    public String addUser(@ModelAttribute @Valid Composite composite,BindingResult result,Model model){
        if (!result.hasErrors()){
            userService.addUserByParam(composite);
             return "redirect:/data-page";
        } else {
            model.addAttribute("errors", "Поля не должны быть пустыми");
            model.addAttribute("organizations",organizationService.getAllOrganization());
            return "add-user-page";
        }
    }



    @PostMapping("/add-organization")
    public String addOrganization(@ModelAttribute @Valid Organization organization,BindingResult result, Model model){
        if (!result.hasErrors()){
            if ( organizationService.getOrganizationByName(organization) == null){
                organizationService.save(organization);
                return "redirect:/data-page";
            } else {
                model.addAttribute("exist", "Поля не должны быть пустыми");
                return "add-organization";
            }

        } else {
            model.addAttribute("errors", "Поля не должны быть пустыми");
            return "add-organization";
        }
    }

    @GetMapping("/add-organization-page")
    public String addOrganizationPage(Model model){
        model.addAttribute("organizations", organizationService.getAllOrganization());
        return "add-organization";
    }


    @PostMapping("/search-usr")
    public String searchUsrByParam(@RequestParam("search_param") String search_param1, Model model){
        String search_param = search_param1.toLowerCase();
        List<Usr> userList = userRepository.findAll();
        List<Usr> resultList = new ArrayList<>();
        for (Usr usr : userList){
            if (!(usr.getOrganization() == null) && (usr.getUsr_full_name().toLowerCase().contains(search_param) ||
                    usr.getUsr_father_name().toLowerCase().contains(search_param) || usr.getOrganization().getName().toLowerCase().contains(search_param))){
                resultList.add(usr);
            }
        }
        model.addAttribute("users", resultList);
        return "data-page";
    }


}
