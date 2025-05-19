package ra.session_10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ra.session_10.model.Account;
import ra.session_10.service.AccountService;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    private AccountService accountService;

    // Hiển thị form đăng ký
    @GetMapping("register")
    public String showRegisterForm(Model model) {
        // Thêm đối tượng Account trống vào model để binding
        model.addAttribute("account", new Account());
        return "registerForm";
    }

    // Xử lý dữ liệu đăng ký
    @PostMapping("register-acc")
    public String register(@ModelAttribute("account") Account account,
                           RedirectAttributes redirectAttributes) {

        // Kiểm tra xem username đã tồn tại chưa
        if (accountService.isUsernameExists(account.getUsername())) {
            redirectAttributes.addFlashAttribute("error", "Tên đăng nhập đã tồn tại!");
            return "redirect:/account/register";
        }

        // Đăng ký tài khoản
        accountService.registerAccount(account);

        // Thêm thông báo thành công
        redirectAttributes.addFlashAttribute("success", "Đăng ký tài khoản thành công!");

        // Chuyển hướng về trang thành công
        return "redirect:/account/register-success";
    }

    // Hiển thị trang thành công
    @GetMapping("register-success")
    public String showSuccessPage() {
        return "registerSuccess";
    }
}
