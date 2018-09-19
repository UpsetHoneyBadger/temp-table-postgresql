CREATE TABLE IF NOT EXISTS mytable (number1 INT PRIMARy KEy);
INSERT INTO mytable VALUES (1) ON CONFLICT DO NOTHING;
INSERT INTO mytable VALUES (2) ON CONFLICT DO NOTHING;
INSERT INTO mytable VALUES (3) ON CONFLICT DO NOTHING;
INSERT INTO mytable VALUES (4) ON CONFLICT DO NOTHING;
INSERT INTO mytable VALUES (5) ON CONFLICT DO NOTHING;
INSERT INTO mytable VALUES (6) ON CONFLICT DO NOTHING;

DROP TABLE myothertable;
CREATE TABLE IF NOT EXISTS myothertable (id INT, msg TEXT);
INSERT INTO myothertable VALUES (1, 'number 1');
INSERT INTO myothertable VALUES (2, 'number 2');
INSERT INTO myothertable VALUES (3, 'number 3');
INSERT INTO myothertable VALUES (4, 'number 4');
INSERT INTO myothertable VALUES (5, 'number 5');
INSERT INTO myothertable VALUES (6, 'number 6 a');
INSERT INTO myothertable VALUES (6, 'number 6 b');


SELECT * FROM mytable;

SELECT * INTO  TEMP numbers_above_3 FROM mytable WHERE number1 > 3;

-- SELECT * from myothertable where id = 6;
SELECT * FROM myothertable WHERE id IN (SELECT number1 FROM numbers_above_3); 
-- SELECT ANY(SELECT msg FROM myothertable WHERE id = number1) as msg, number1 from numbers_above_3;