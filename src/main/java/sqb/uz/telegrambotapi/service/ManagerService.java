package sqb.uz.telegrambotapi.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import sqb.uz.telegrambotapi.repository.ManagerRepository;

@Service
@RequiredArgsConstructor
public class ManagerService implements UserDetailsService {

    private final ManagerRepository managerRepository;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return managerRepository.findByUsername(s);
    }
}
