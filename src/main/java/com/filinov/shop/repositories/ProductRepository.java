package com.filinov.shop.repositories;

import com.filinov.shop.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Long>{
    List<Product> findByTitle(String title);
}

