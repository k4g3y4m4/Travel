package com.codingdojo.travel.repositores;

import com.codingdojo.travel.models.Travel;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface TravelRepository extends CrudRepository<Travel, Long> {
    List<Travel> findAll();
}
