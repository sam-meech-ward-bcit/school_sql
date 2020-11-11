DROP TRIGGER IF EXISTS  update_total_enrollments;

DELIMITER //

CREATE TRIGGER update_total_enrollments 
-- a new enrollment to be added to the enrollment table
AFTER INSERT ON enrollment 
FOR EACH ROW 
BEGIN
  DECLARE total_enrollments INT DEFAULT 0;
-- get the total number of enrollments for the class
  SELECT count(*)
  INTO total_enrollments
  FROM enrollment
  WHERE enrollment.class_id = NEW.class_id;

-- update the class row with that value
  UPDATE class
  SET class.total_enrollments = total_enrollments
  WHERE class.id = NEW.class_id;
END//

DELIMITER ;