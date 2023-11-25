CREATE INDEX `idx_livestream_id` ON `livestream_tags` (`livestream_id`);
CREATE INDEX `idx_reservation_slot_timestamp` ON `reservation_slots` (`start_at`, `end_at`);
CREATE INDEX `idx_user_id_livestream_id` ON `ng_words` (`user_id`, `livestream_id`);
CREATE INDEX `idx_user_id` ON `livestream` (`user_id`);
CREATE INDEX `idx_livestream_id` ON `livestream_comments` (`livestream_id`);
