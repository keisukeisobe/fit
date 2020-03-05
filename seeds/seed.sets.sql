BEGIN;

TRUNCATE
  sets
  RESTART IDENTITY CASCADE;

INSERT INTO sets (user_id, add_date, reps, weight, exercise, e1rm)
VALUES
  (1, '2020-03-05', 10, 225, 'bench press', 300);

COMMIT;