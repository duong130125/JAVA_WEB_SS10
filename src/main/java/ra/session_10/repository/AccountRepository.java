package ra.session_10.repository;

import org.springframework.stereotype.Repository;
import ra.session_10.model.Account;

import java.util.ArrayList;
import java.util.List;

@Repository
public class AccountRepository {
    private List<Account> accounts = new ArrayList<>();

    public void save(Account account) {
        accounts.add(account);
        System.out.println("Đã lưu tài khoản: " + account);
    }

    public List<Account> findAll() {
        return accounts;
    }

    public Account findByUsername(String username) {
        return accounts.stream()
                .filter(account -> account.getUsername().equals(username))
                .findFirst()
                .orElse(null);
    }
}
