package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();
    void save(Product product);
    int findIndexById(int id);
    void update(int id, Product product);
    void delete(int id);
    void view(int id);
    List<Product> search(String name);
}
