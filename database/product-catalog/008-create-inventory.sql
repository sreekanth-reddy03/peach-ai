USE peach_ai;
CREATE TABLE inventory (
    inventory_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT NOT NULL,
    store_id BIGINT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    availability_status VARCHAR(30) NOT NULL DEFAULT 'IN_STOCK',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uq_inventory_product_store UNIQUE (product_id, store_id),
    CONSTRAINT fk_inventory_product FOREIGN KEY (product_id) REFERENCES product(product_id),
    CONSTRAINT fk_inventory_store FOREIGN KEY (store_id) REFERENCES store(store_id)
);