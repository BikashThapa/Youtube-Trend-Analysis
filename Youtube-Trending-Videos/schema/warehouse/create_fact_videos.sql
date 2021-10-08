CREATE TABLE IF NOT EXISTS  warehouse.fact_videos
(
 id INTEGER,
 video_id INTEGER,
 avg_views INTEGER,
 avg_likes INTEGER,
 avg_dislikes INTEGER,
 avg_comment INTEGER,
 CONSTRAINT pk_facy_video_data_id PRIMARY KEY(id),
 CONSTRAINT fk_video_data_id FOREIGN KEY(video_id) REFERENCES dim_video_data(id)
);
