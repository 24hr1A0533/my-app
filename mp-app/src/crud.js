const express = require('express');
const app = express();

app.use(express.json());

let students = [
    { id: 1, name: "Ravi" },
    { id: 2, name: "Priya" }
];


app.post('/students', (req, res) => {
    students.push(req.body);
    res.send('Student Added');
});


app.get('/students', (req, res) => {
    res.json(students);
});


app.put('/students/:id', (req, res) => {
    const id = parseInt(req.params.id);

    students = students.map(student =>
        student.id === id ? req.body : student
    );

    res.send('Student Updated');
});


app.delete('/students/:id', (req, res) => {
    const id = parseInt(req.params.id);

    students = students.filter(student => student.id !== id);

    res.send('Student Deleted');
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});
