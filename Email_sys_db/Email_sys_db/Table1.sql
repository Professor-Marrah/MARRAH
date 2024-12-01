CREATE TABLE emails (
    id SERIAL PRIMARY KEY,
    sender VARCHAR(255),
    recipient VARCHAR(255),
    subject VARCHAR(255),
    body TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
INSERT INTO emails (sender, recipient, subject, body)
VALUES 
('saio@example.com', 'recipient1@example.com', 'Subject 1', 'Body of email 1'),
('saio@example.com', 'recipient2@example.com', 'Subject 2', 'Body of email 2'),
('saio@example.com', 'recipient3@example.com', 'Subject 3', 'Body of email 3');
