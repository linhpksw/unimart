CREATE TABLE users
(
    id         VARCHAR(255) PRIMARY KEY,
    email      VARCHAR(255) UNIQUE NOT NULL,
    phone      VARCHAR(20) UNIQUE,
    password   VARCHAR(255)        NOT NULL,
    role       VARCHAR(50),
    name       VARCHAR(100),
    gender     VARCHAR(10),
    dob        DATE,
    is_banned  BOOLEAN  DEFAULT FALSE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE remembers
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    user_id         VARCHAR(255),
    token           VARCHAR(255) UNIQUE NOT NULL,
    expiration_date DATETIME            NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);
