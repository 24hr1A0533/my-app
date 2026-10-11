const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'password@123',
    database: 'college'
});

connection.connect((err) => {
    if (err) {
        console.log("Database connection failed");
        console.log(err.message);
        return;
    }

    console.log("Database connected successfully");

    connection.query(
        "SELECT * FROM student",
        (err, result) => {
            if (err) {
                console.log(err.message);
            } else {
                console.log(result);
            }

            connection.end();
        }
    );
});