package com.codingdojo.travel.controllers;

import com.codingdojo.travel.models.Travel;
import com.codingdojo.travel.services.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class TravelController {

    @Autowired
    private final TravelService travelService;

    public TravelController(TravelService travelService) {
        this.travelService = travelService;
    }

    @GetMapping("/")
    public String index(Model model, @ModelAttribute("newTravel") Travel newTravel) {
        List<Travel> travels = travelService.AllTravels();
        model.addAttribute("travels", travels);
        return "index.jsp";
    }

    @PostMapping("/newTravel")
    public String create(@Valid @ModelAttribute("newTravel") Travel newTravel, BindingResult result) {
        if (result.hasErrors()) {
            return "index.jsp";
        }
    travelService.createTravel(newTravel);
        return "redirect:/";
    }
}
