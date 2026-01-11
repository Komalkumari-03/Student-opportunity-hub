-- STUDENT TABLE
CREATE TABLE Student (
    student_id INT PRIMARY KEY,       -- Unique student ID
    name VARCHAR(50),                 -- Student name
    email VARCHAR(50),                -- Student email
    course VARCHAR(50),               -- Student course
    year INT                          -- Year of study
);

-- OPPORTUNITIES TABLE
CREATE TABLE Opportunities (
    opportunity_id INT PRIMARY KEY,   -- Unique opportunity ID
    title VARCHAR(100),               -- Opportunity title
    category VARCHAR(50),             -- Internship / Hackathon / Scholarship
    description TEXT,                 -- Details about opportunity
    eligibility VARCHAR(100),         -- Eligibility criteria
    last_date DATE                     -- Last date to apply
);

-- APPLICATION TABLE
CREATE TABLE Application (
    application_id INT PRIMARY KEY,   -- Unique application ID
    student_id INT,                   -- Linked student
    opportunity_id INT,               -- Linked opportunity
    status VARCHAR(20),               -- e.g., "Applied" or "Pending"
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (opportunity_id) REFERENCES Opportunities(opportunity_id)
);
