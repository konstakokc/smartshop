package smartshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import smartshop.service.AddressService;

@Controller
public class AddressController {
    private AddressService addressService;

    @Autowired
    public void setAddressService(AddressService addressService) {
        this.addressService = addressService;
    }

    @GetMapping(value = "/addresses")
    public String getAddresses(Model model) {
        model.addAttribute("addresses", this.addressService.getAddresses());
        return "addresses";
    }
}
