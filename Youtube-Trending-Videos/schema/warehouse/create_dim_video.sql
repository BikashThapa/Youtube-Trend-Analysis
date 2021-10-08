CREATE TABLE IF NOT EXISTS  warehouse.dim_video
(
 video_id INTEGER,
 video_title VARCHAR(255),
 description VARCHAR(2000),
 tags VARCHAR(500),
 publish_time DATE,
 comment_disabled Boolean DEFAULT FALSE,
 CONSTRAINT pk_video_id PRIMARY KEY(video_id)
);
