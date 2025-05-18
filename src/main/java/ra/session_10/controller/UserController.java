package ra.session_10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ra.session_10.model.User;

@Controller
public class UserController {

    @GetMapping("userForm")
    public String showForm(Model model) {
        // Thêm một đối tượng Người dùng mới vào mô hình
        model.addAttribute("user", new User());
        return "userForm";
    }

    @PostMapping("submit-Form")
    public String submitForm(@ModelAttribute("user") User user, Model model) {
        // Thêm đối tượng người dùng đã gửi vào mô hình cho trang kết quả
        model.addAttribute("user", user);
        return "result";
    }
}