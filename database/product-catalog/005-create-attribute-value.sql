USE peach_ai;
CREATE TABLE attribute_value (
    attribute_value_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    attribute_id BIGINT NOT NULL,
    value VARCHAR(150) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_attribute_value_attribute FOREIGN KEY (attribute_id) REFERENCES attribute(attribute_id),
    CONSTRAINT uq_attribute_value UNIQUE (attribute_id, value)
);