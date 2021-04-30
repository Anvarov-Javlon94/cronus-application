package sqb.uz.telegrambotapi.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import sqb.uz.telegrambotapi.domain.Usr;
import sqb.uz.telegrambotapi.repository.UserRepository;

@Controller
@RequestMapping
@RequiredArgsConstructor
public class MainController {

    private final UserRepository userRepository;

    @GetMapping("/")
    public String mainPage(){
        return "home";
    }

    @GetMapping("/data-page")
    public String dataPage(Model model) {
        model.addAttribute("users", userRepository.userList());
        return "data-page";
    }

    @GetMapping("/cabinet/{id}")
    public String goToCabinet(@PathVariable Long id, Model model){
        Usr usr = userRepository.getOne(id);
        int count_of_users = userRepository.findAll().size();
        model.addAttribute("count_of_users", count_of_users);
        model.addAttribute("user",usr);
        return "cabinet";
    }

    @GetMapping("/card")
    public String cardPage(){
        return "card";
    }
}
