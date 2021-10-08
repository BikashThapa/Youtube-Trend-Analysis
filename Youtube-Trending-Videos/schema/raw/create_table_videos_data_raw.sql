CREATE TABLE IF NOT EXISTS  raw.videos_data_raw
(
  video_id VARCHAR(255),
  trending_date VARCHAR(255),	
  title VARCHAR(255),
  channel_title VARCHAR(255),
  category_id VARCHAR(255),
  publish_time VARCHAR(255),
  tags VARCHAR(255),
  views VARCHAR(255),
  likes VARCHAR(255),
  dislikes VARCHAR(255),
  comment_count VARCHAR(255),
  thumbnail_link VARCHAR(255),
  comment_disabled VARCHAR(255),
  ratings_disabled VARCHAR(255),
  video_error_or_removed VARCHAR(255),
  description VARCHAR(5000)
);
