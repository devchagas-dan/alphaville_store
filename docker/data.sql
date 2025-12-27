
-- Schema alphaville_store
CREATE DATABASE IF NOT EXISTS alphaville_store;
USE alphaville_store;

-- Drop tables in correct order
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Type;
DROP TABLE IF EXISTS Brand;

-- Create Brand table
CREATE TABLE Brand (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

INSERT INTO Brand (Name) VALUES
('Mamacita'),
('AlphavilleBakery'),
('Muy Guapa');

-- Create Type table
CREATE TABLE Type (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

INSERT INTO Type (Name) VALUES
('Calca Jeans com Lycra'),
('Comida'),
('Bebida'),
('Massa'),
('Embutido'),
('Bolo'),
('Laticinio');

-- Create Product table
CREATE TABLE Product (
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Description TEXT,
  Price DECIMAL(10,2) NOT NULL,
  PictureUrl VARCHAR(255),
  ProductTypeId INT NOT NULL,
  ProductBrandId INT NOT NULL,
  CONSTRAINT fk_product_type
    FOREIGN KEY (ProductTypeId) REFERENCES Type(Id),
  CONSTRAINT fk_product_brand
    FOREIGN KEY (ProductBrandId) REFERENCES Brand(Id)
) ENGINE=InnoDB;

 -- Insert data into the product table
 INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES
 ('Empada de camarão', 'Feita com os melhores ingredientes',7, 'images/Product/empadacamarao.jpg', 2, 2),
 ('Bolo de chocolate', 'Bolo caseiro', 15.00, 'images/Product/bolo.jpg', 6, 2);
