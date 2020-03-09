BEGIN;

TRUNCATE
  users,
  workouts,
  exercises,
  sets
  RESTART IDENTITY CASCADE;

INSERT INTO users (username, password, email)
VALUES
  ('dunder', '$2a$12$/CwJvVbQbC7Bt2FMkSo.Be3vzvtT80Jt6eDr4acBAdk3DOlOhMU4K', 'info1@email.com');

INSERT INTO workouts (user_id, add_date)
VALUES
  (1, '2020-03-05');

INSERT INTO exercises (user_id, e1rm, onerm, name)
VALUES
  (1, 300, 265, 'bench press');

INSERT INTO sets (user_id, reps, weight, exercise, e1rm, workout_id)
VALUES
  (1, 10, 225, 1, 300, 1);

COMMIT;