BEGIN TRANSACTION;

-- Drop the table if it exists
IF OBJECT_ID('preferences', 'U') IS NOT NULL
    DROP TABLE preferences;

CREATE TABLE preferences (
  id INT IDENTITY(1,1) NOT NULL,
  API_key VARCHAR(32) NOT NULL,
  theme VARCHAR(6),
  pref VARCHAR(255),
  PRIMARY KEY (id),
  CONSTRAINT fk_API_key FOREIGN KEY (API_key) REFERENCES users (API_key),
  CONSTRAINT uk_API_key UNIQUE (API_key)
);

COMMIT;