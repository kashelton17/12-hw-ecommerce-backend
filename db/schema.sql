DROP DATABASE IF EXISTS ecommerce_db;

CREATE DATABASE ecommerce_db;

INSERT INTO `ecommerce_db`.`category` (`category_name`) VALUES ('Shoes');
INSERT INTO `ecommerce_db`.`category` (`category_name`) VALUES ('Clothes');
INSERT INTO `ecommerce_db`.`category` (`category_name`) VALUES ('Toys');
INSERT INTO `ecommerce_db`.`category` (`category_name`) VALUES ('Books');

INSERT INTO `ecommerce_db`.`product` (`product_name`, `price`, `stock`, `category_id`) VALUES ('Plain T-Shirt', '20.00', '10', '2');
INSERT INTO `ecommerce_db`.`product` (`product_name`, `price`, `stock`, `category_id`) VALUES ('Air Force 1', '100.00', '20', '1');
INSERT INTO `ecommerce_db`.`product` (`product_name`, `price`, `stock`, `category_id`) VALUES ('Fairy Wand', '15.00', '5', '3');
INSERT INTO `ecommerce_db`.`product` (`product_name`, `price`, `stock`, `category_id`) VALUES ('Cat in the Hat', '15.00', '8', '4');

INSERT INTO `ecommerce_db`.`tag` (`tag_name`) VALUES ('baby');
INSERT INTO `ecommerce_db`.`tag` (`tag_name`) VALUES ('white');
INSERT INTO `ecommerce_db`.`tag` (`tag_name`) VALUES ('adult');
INSERT INTO `ecommerce_db`.`tag` (`tag_name`) VALUES ('kids');

INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('1', '2');
INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('1', '3');
INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('2', '2');
INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('2', '3');
INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('3', '4');
INSERT INTO `ecommerce_db`.`product_tag` (`product_id`, `tag_id`) VALUES ('4', '1');
