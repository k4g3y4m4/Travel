package com.codingdojo.travel.controllers;

import com.codingdojo.travel.models.Travel;
import com.codingdojo.travel.services.TravelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
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

    @GetMapping("/edit/{id}")
    public String edit(@ModelAttribute("editTravel") Travel editTravel, @PathVariable("id") Long id, Model model, HttpSession session) {
        Travel travel = travelService.findTravel(id);
        model.addAttribute("travel", travel);
        session.setAttribute("id", id);
        return "edit.jsp";
    }

    @PostMapping("/update/{id}")
    public String update(@Valid @ModelAttribute("editTravel") Travel editTravel, BindingResult result, @PathVariable("id") Long id,HttpSession session) {
        if (result.hasErrors()) {
            return "edit.jsp";
        }
        travelService.updateTravel(editTravel,id);
        session.removeAttribute("id");
        return "redirect:/";
    }

    @GetMapping("/expense/{id}")
    public String expense(@PathVariable("id") Long id, Model model) {
        Travel travel = travelService.findTravel(id);
        model.addAttribute("travel", travel);
        return "show.jsp";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        travelService.deleteTravel(id);
        return "redirect:/";
    }
}


