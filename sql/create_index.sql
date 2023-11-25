IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_livestream_id_tags')
BEGIN
   CREATE INDEX `idx_livestream_id_tags` ON `livestream_tags` (`livestream_id`); 
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_livestream_id_comments')
BEGIN
   CREATE INDEX `idx_livestream_id_comments` ON `livestream_comments` (`livestream_id`); 
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_user_id')
BEGIN
   CREATE INDEX `idx_user_id` ON `livestreams` (`user_id`); 
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_user_id_livestream_id')
BEGIN
   CREATE INDEX `idx_user_id_livestream_id` ON `ng_words` (`user_id`, `livestream_id`); 
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = 'idx_reservation_slot_start_end')
BEGIN
   CREATE INDEX `idx_reservation_slot_start_end` ON `reservation_slots` (`start_at`, `end_at`); 
END
