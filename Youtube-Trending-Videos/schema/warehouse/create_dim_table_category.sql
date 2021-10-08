CREATE TABLE IF NOT EXISTS  warehouse.dim_category
(
 id INTEGER,
 title VARCHAR(255),
 country VARCHAR(100),
 CONSTRAINT pk_id PRIMARY KEY(id)
);
