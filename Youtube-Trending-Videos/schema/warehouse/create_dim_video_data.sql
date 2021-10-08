CREATE TABLE IF NOT EXISTS  warehouse.dim_video_data
(
 id INTEGER,
 trending_date DATE,
 category_id INTEGER,
 channel_id INTEGER,
 views INTEGER,
 likes INTEGER,
 dislikes INTEGER,
 comment_count INTEGER,
 video_id INTEGER,
 CONSTRAINT pk_video_data_id PRIMARY KEY(id),
 CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES dim_category(id),
 CONSTRAINT fk_channel_id FOREIGN KEY(channel_id) REFERENCES dim_channel(channel_id),
 CONSTRAINT fk_video_id FOREIGN KEY(video_id) REFERENCES dim_video(video_id)
);
