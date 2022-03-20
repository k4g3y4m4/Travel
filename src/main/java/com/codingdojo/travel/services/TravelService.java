package com.codingdojo.travel.services;


import com.codingdojo.travel.models.Travel;
import com.codingdojo.travel.repositores.TravelRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TravelService {
    private final TravelRepository travelRepository;

    public TravelService(TravelRepository travelRepository) {
        this.travelRepository = travelRepository;
    }

    //devuelve todos los Viajes
    public List<Travel> AllTravels() {
        return travelRepository.findAll();
    }
    //crear un viaje
    public Travel createTravel(Travel travel) {
        return travelRepository.save(travel);
    }

    //buscar un viaje por id
    public Travel findTravel(Long id){
        Optional<Travel> optionalTravel = travelRepository.findById(id);
        if(optionalTravel.isPresent()){
            return optionalTravel.get();
        }else{
            return null;
        }
    }
    //actualizar un viaje
    public void updateTravel(Travel editTravel, Long id){
        travelRepository.updateTravel(editTravel.getExpense(), editTravel.getVendor(), editTravel.getAmount(), id);
    }

    //eliminar un viaje por id
}
