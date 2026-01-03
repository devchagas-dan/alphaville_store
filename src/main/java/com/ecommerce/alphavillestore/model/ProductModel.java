package com.ecommerce.alphavillestore.model;

import com.ecommerce.alphavillestore.entity.Brand;
import com.ecommerce.alphavillestore.entity.Type;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProductModel {

    private Integer id;
    private String name;
    private String description;
    private Double price;
    private String pictureUrl;
    private Type type;
    private Brand brand;
}
