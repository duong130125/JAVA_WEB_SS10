package ra.session_10.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ra.session_10.model.Account;
import ra.session_10.repository.AccountRepository;

@Service
public class AccountService {
    @Autowired
    private AccountRepository accountRepository;

    public void registerAccount(Account account) {
        // Trong thực tế, bạn sẽ thêm mã hóa mật khẩu tại đây
        accountRepository.save(account);
    }

    public boolean isUsernameExists(String username) {
        return accountRepository.findByUsername(username) != null;
    }
}
