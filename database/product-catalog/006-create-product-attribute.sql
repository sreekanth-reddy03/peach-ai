CREATE TABLE product_attribute (
    product_id BIGINT NOT NULL,
    attribute_value_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (product_id, attribute_value_id),
    CONSTRAINT fk_product_attribute_product FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT fk_product_attribute_value FOREIGN KEY (attribute_value_id) REFERENCES attribute_value(attribute_value_id)
);