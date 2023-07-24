# Monotes 

Monotes is a course management desktop application designed to help students keep track of their courses, grades, and progress.

## Features

- Add new courses with course name, period, number of evaluations, evaluations done, and the grade needed to pass.
- Update existing course information such as period, number of evaluations, evaluations done, and the grade needed to pass.
- Calculate the grade needed to pass a course based on partial grades and pending evaluations.
- User-friendly graphical interface.
- Database integration to store and retrieve course information.

## Requirements

- Java Runtime Environment (JRE) 8 or higher
- MySQL Database Server

## Installation

1. Clone or download the Monotes repository.

2. Import the project into NetBeans IDE.
3.  Create a new database named "Monotes" on a MySQL server.
4. Import the database schema from the `DDL.sql` and `DML.sql`files located in the `Mysql_workbench` directory.
5. Update the database connection details in the `Database.java` file located in the "Monotes" directory to match your MySQL server settings.
6. Compile and run the `Login.java` file to start the Monotes.

## Usage

1. Upon running the application, a login window will appear.
2. Enter your username and password to log in. If you are a new user, you can sign up with a new username and password.
3. After logging in, you will be presented with the main dashboard.
4. To add a new course, click on the **Load course** button and fill in the course details. Then load the course by clicking **Send data**.
5. To update an existing course, click on the **Update course** button and select the course from the drop-down list. Then, update the course information and click **Update data**.
6. To delete a course, click on the checkbox next to the course you want to delete. After selecting the course, click the **Delete Course** button.
7. The application will automatically display valuable information regarding overall performance and the mentioned features.