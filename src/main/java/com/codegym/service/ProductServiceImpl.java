package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    List<Product> products;

    public ProductServiceImpl() {
        products = new ArrayList<>();
        products.add(new Product(1, "Apple", 12000, "tao", "HAG"));
        products.add(new Product(2, "Grape", 15000, "nho", "HAG"));
        products.add(new Product(3, "Banana", 10000, "chuoi", "KFR"));
        products.add(new Product(4, "Orange", 11000, "cam", "FRU"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public int findIndexById(int id) {
        int index = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId()==id){
                index = i;
            }
        }
        return index;
    }
    public Product findProductById(int id){
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId()==id){
                return products.get(i);
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
products.set(findIndexById(id),product);
    }

    @Override
    public void delete(int id) {
        products.remove(findIndexById(id));
    }

    @Override
    public void view(int id) {

    }

    @Override
    public List<Product> search(String name) {
        List<Product> productList = new ArrayList<>();
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getName().toLowerCase().contains(name)){
                productList.add(products.get(i));
            }
        }
        return productList;
    }
}
