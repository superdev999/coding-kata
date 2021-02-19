const express = require('express')
require('dotenv').config()
const bodyParser = require("body-parser");
const checkoutRouter = require('./routes/checkout')

const app = express()
const http = require('http').createServer(app)
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(
    checkoutRouter
);

// //Cteate Database
// app.get('/createdb', (req, res) => {
//     let sql = 'Create Database nodemysql'
//     db.query(sql, (err) => {
//         if (err) {
//             throw err;
//         }
//         res.send("Database Created");
//     });
// });

const PORT = process.env.PORT || 3000
http.listen(PORT, () => {
	console.log('Server is up on port', PORT)
})