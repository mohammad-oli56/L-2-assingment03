CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    role VARCHAR(20) NOT NULL
        CHECK (role IN ('Football Fan', 'Ticket Manager')),
    phone_number VARCHAR(20)
);


CREATE TABLE Matches (
    match_id SERIAL PRIMARY KEY,
    fixture VARCHAR(150) NOT NULL,
    tournament_category VARCHAR(100) not null,
    base_ticket_price DECIMAL(10,2) NOT NULL CHECK (base_ticket_price >= 0),
    match_status VARCHAR(50) NOT NULL,

    CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out'))
);


  



CREATE TABLE Bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id) ON DELETE CASCADE,
    match_id INT REFERENCES Matches(match_id) ON DELETE CASCADE,
    seat_number VARCHAR(20) NULL, 
    payment_status VARCHAR(20) NULL 
        CHECK (payment_status IN ('Pending', 'Paid', 'Cancelled', 'Confirmed')),
    total_cost DECIMAL(10,2) NOT NULL CHECK (total_cost >= 0)
);

