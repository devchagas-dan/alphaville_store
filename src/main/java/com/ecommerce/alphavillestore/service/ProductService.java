package com.ecommerce.alphavillestore.service;

import com.ecommerce.alphavillestore.entity.Product;
import com.ecommerce.alphavillestore.model.ProductModel;

import java.util.List;

public interface ProductService {

    ProductModel getProductById(Integer productId);
    List<ProductModel> getProducts();
}
