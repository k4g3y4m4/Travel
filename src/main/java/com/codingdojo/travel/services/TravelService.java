package com.codingdojo.travel.services;


import com.codingdojo.travel.models.Travel;
import com.codingdojo.travel.repositores.TravelRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TravelService {
    private final TravelRepository travelRepository;

    public TravelService(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }

    //devuelve todos los VA
    public List<Travel> AllTravels() {
        return travelRepository.findAll();
    }
    //crear un viaje
    public Travel createTravel(Travel travel) {
        return travelRepository.save(travel);
    }

}
