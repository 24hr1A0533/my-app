const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Welcome to Home Page');
});

app.get('/about', (req, res) => {
    res.send('About Us Page');
});

app.get('/contact', (req, res) => {
    res.send('Contact Us Page');
});

app.listen(8000, () => {
    console.log('Server running on port 8000');
});
