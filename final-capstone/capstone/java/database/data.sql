BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


-- Sample data for the patient table
INSERT INTO patient (user_id, first_name, last_name, date_of_birth, address, phone_number)
VALUES
    (NULL, 'John', 'Doe', '1990-01-01', '123 Main St', '123-456-7890'),
    (NULL, 'Jane', 'Smith', '1985-05-10', '456 Elm St', '987-654-3210'),
    (NULL, 'Michael', 'Johnson', '1978-11-15', '789 Oak Ave', '555-123-4567'),
    (NULL, 'Emily', 'Davis', '1992-09-20', '321 Pine Rd', '777-888-9999'),
    (NULL, 'David', 'Anderson', '1982-03-25', '555 Maple Dr', '111-222-3333'),
    (NULL, 'Sarah', 'Wilson', '1975-07-03', '444 Walnut Ln', '999-888-7777'),
    (NULL, 'Daniel', 'Miller', '1998-02-14', '777 Cedar St', '444-555-6666'),
    (NULL, 'Jessica', 'Brown', '1989-06-30', '888 Birch Ave', '222-333-4444'),
    (NULL, 'Andrew', 'Taylor', '1972-12-08', '222 Oak St', '666-777-8888'),
    (NULL, 'Olivia', 'Clark', '1995-04-18', '999 Elm Ave', '333-444-5555');

-- Sample data for the doctor table
INSERT INTO doctor (user_id, first_name, last_name, time_slot_default, email)
VALUES
    (NULL, 'Dr. James', 'Johnson', 30, 'drjames@example.com'),
    (NULL, 'Dr. Emily', 'Smith', 45, 'dremily@example.com'),
    (NULL, 'Dr. Michael', 'Brown', 60, 'drbrown@example.com'),
    (NULL, 'Dr. Sarah', 'Davis', 30, 'drsarah@example.com'),
    (NULL, 'Dr. David', 'Wilson', 45, 'drdavid@example.com'),
    (NULL, 'Dr. Jessica', 'Anderson', 60, 'drjessica@example.com'),
    (NULL, 'Dr. Daniel', 'Miller', 30, 'drdaniel@example.com'),
    (NULL, 'Dr. Olivia', 'Taylor', 45, 'drolivia@example.com'),
    (NULL, 'Dr. Andrew', 'Clark', 60, 'drandrew@example.com'),
    (NULL, 'Dr. Emily', 'Johnson', 30, 'dremilyj@example.com');


-- Sample data for doctor_availability table
INSERT INTO doctor_availability (doctor_id, day_of_week, start_time, end_time)
VALUES
    (1, 'Monday', '09:00:00', '17:00:00'),
    (1, 'Wednesday', '10:00:00', '18:00:00'),
    (2, 'Tuesday', '08:00:00', '16:00:00'),
    (2, 'Thursday', '09:00:00', '17:00:00'),
    (3, 'Monday', '13:00:00', '21:00:00'),
    (3, 'Wednesday', '14:00:00', '22:00:00'),
    (4, 'Tuesday', '11:00:00', '19:00:00'),
    (4, 'Thursday', '12:00:00', '20:00:00'),
    (5, 'Monday', '08:00:00', '16:00:00'),
    (5, 'Friday', '09:00:00', '17:00:00'),
    (6, 'Tuesday', '12:00:00', '20:00:00'),
    (6, 'Thursday', '13:00:00', '21:00:00'),
    (7, 'Monday', '09:00:00', '17:00:00'),
    (7, 'Wednesday', '10:00:00', '18:00:00'),
    (8, 'Tuesday', '08:00:00', '16:00:00'),
    (8, 'Thursday', '09:00:00', '17:00:00'),
    (9, 'Monday', '13:00:00', '21:00:00'),
    (9, 'Wednesday', '14:00:00', '22:00:00'),
    (10, 'Tuesday', '11:00:00', '19:00:00'),
    (10, 'Thursday', '12:00:00', '20:00:00');

-- Sample data for office table
INSERT INTO office (office_name, address, phone_number)
VALUES
    ('Office A', '123 Main St', '123-456-7890'),
    ('Office B', '456 Elm St', '987-654-3210'),
    ('Office C', '789 Oak Ave', '555-123-4567'),
    ('Office D', '321 Pine Rd', '777-888-9999'),
    ('Office E', '555 Maple Dr', '111-222-3333'),
    ('Office F', '444 Walnut Ln', '999-888-7777'),
    ('Office G', '777 Cedar St', '444-555-6666'),
    ('Office H', '888 Birch Ave', '222-333-4444');

-- Sample data for reviews table
INSERT INTO reviews (office_id, description, rating)
VALUES
    (1, 'Great service and friendly staff!', 5),
    (2, 'Highly recommended. Excellent doctors!', 5),
    (3, 'Convenient location and good facilities.', 4),
    (4, 'Average experience. Could be better.', 3),
    (5, 'Professional and efficient. Satisfied with the service.', 4),
    (6, 'Impressed with the quality of care.', 5),
    (7, 'Friendly and knowledgeable doctors.', 4),
    (8, 'Average experience. Nothing exceptional.', 3),
    (3, 'Unfriendly staff. Will not visit again.', 2),
    (5, 'Long waiting times. Needs improvement.', 2);



COMMIT TRANSACTION;
