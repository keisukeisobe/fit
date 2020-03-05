BEGIN;

TRUNCATE
  users
  RESTART IDENTITY CASCADE;

INSERT INTO users (username, password, email)
VALUES
  ('dunder', '$2a$12$/CwJvVbQbC7Bt2FMkSo.Be3vzvtT80Jt6eDr4acBAdk3DOlOhMU4K', 'info1@email.com');

INSERT INTO sets (user_id, add_date, reps, weight, exercise, e1rm)
VALUES
  (1, '2020-03-05', 10, 225, 'bench press', 300);

COMMIT;