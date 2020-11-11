DROP PROCEDURE IF EXISTS  register_student_to_class;

DELIMITER //

CREATE PROCEDURE register_student_to_class (IN first_name VARCHAR(255), IN last_name VARCHAR(255), IN class_id INT)
BEGIN
  DECLARE student_id INT;
  DECLARE total_students INT DEFAULT 0;

  SELECT COUNT(*) 
  INTO total_students
  FROM enrollment
  WHERE enrollment.class_id = class_id;

  IF total_students >= 10 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'There are too many students enrolled already';
  ELSE
    INSERT INTO student (first_name, last_name)
    VALUES (first_name, last_name);

    SELECT LAST_INSERT_ID()
    INTO student_id;
    
    INSERT INTO enrollment (student_id, class_id)
    VALUES (student_id, class_id);
  END IF;
END//

DELIMITER ;