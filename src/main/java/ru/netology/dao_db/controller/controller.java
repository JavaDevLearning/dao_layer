package ru.netology.dao_db.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.dao_db.repository.db_repo;

import java.util.List;


@RestController
@RequestMapping("products")
public class controller {

    db_repo dbRepo;

    public controller(db_repo dbRepo) {
        this.dbRepo = dbRepo;
    }

    @GetMapping(path = "/fetch-product")
    public List<String> getProduct(@RequestParam String name) {
        return dbRepo.getProductName(name);
    }


}
