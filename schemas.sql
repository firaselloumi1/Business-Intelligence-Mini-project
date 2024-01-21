CREATE TABLE dim_time (
    work_year INT

);
CREATE TABLE dim_employee (
    employee_id INT PRIMARY KEY,
   job_title VARCHAR(50),
    salary_in_usd INT,
    employee_residence varchar(50),
    remote_ratio int,
    experience_level VARCHAR(50),
    employment_type varchar(50)
);
CREATE TABLE dim_company(
    company_id  INT PRIMARY KEY,
	company_size VARCHAR(45),
    company_location VARCHAR(45)
   
);

CREATE TABLE dim_job(
    job_code INT PRIMARY KEY,
	job_title varchar (45)
   
   
);
create TABLE fact_salary (
    salary_number INT PRIMARY KEY,
    work_year INT,
    company_id INT,
    employee_id INT,
    job_code INT,
    FOREIGN KEY (work_year) REFERENCES dim_time(work_year),
    FOREIGN KEY (company_id) REFERENCES dim_company(company_id),
    FOREIGN KEY (employee_id) REFERENCES dim_employee(employee_id),
    FOREIGN KEY (job_code) REFERENCES dim_job(job_code)
);
CREATE TABLE location(
    location_id_id  INT PRIMARY KEY,
    company_location VARCHAR(45),
    city VARCHAR(45),
    adress VARCHAR(45),
    postal_code INT,

);