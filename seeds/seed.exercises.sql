BEGIN;

TRUNCATE 
  exercises
  RESTART IDENTITY CASCADE;

INSERT INTO exercises(user_id, e1rm, onerm, name)
VALUES
  (1, 300, 265, 'bench press');

COMMIT;