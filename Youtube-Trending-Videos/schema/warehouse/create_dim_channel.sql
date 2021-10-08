CREATE TABLE IF NOT EXISTS  warehouse.dim_channel
(
 channel_id INTEGER,
 channel_title VARCHAR(100),
 CONSTRAINT pk_channel_id PRIMARY KEY(channel_id)
);
