package com.codingdojo.travel.repositores;

import com.codingdojo.travel.models.Travel;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;


public interface TravelRepository extends CrudRepository<Travel, Long> {
        Optional<Travel> findById(Long id);
        List<Travel> findAll();
        void deleteById(Long id);



        //Update a Travel
        @Transactional
        @Modifying
        @Query(value = "UPDATE db_travels_java.travels  SET  Expense = ?1, Vendor = ?2, Amount = ?3 WHERE Id = ?4 ", nativeQuery = true)
        void updateTravel(String expense, String vendor, Double amount, Long id);

}
