package ra.session_10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ra.session_10.model.Product;

@Controller
public class ProductController {

    @GetMapping("product-add")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        return "productForm";
    }

    @PostMapping("product-save")
    public String saveProduct(@ModelAttribute("product") Product product, Model model) {
        model.addAttribute("product", product);
        return "productResult";
    }
}
