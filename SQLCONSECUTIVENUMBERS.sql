create table logs(student_id int,marks int)
INSERT INTO logs (student_id, marks)VALUES ('101','83'),('102','79'),('103','83'),('104','83'),('105','83'),('106','79'),('107','79'),('108','83');
select * from logs;
SELECT DISTINCT L1.marks AS  ConsecutiveNums
FROM (logs L1 JOIN logs L2 ON L1.marks = L2.marks AND L1.student_id = L2.student_id-1)
JOIN logs L3 ON L1.marks = L3.marks AND L2.student_id = L3.student_id-1;