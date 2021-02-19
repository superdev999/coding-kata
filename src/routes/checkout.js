const express = require("express");
const router = new express.Router();
const mysql = require('mysql')

//Create connection
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "nodemysql"
});

router.post("/order", async (req, res) => {
    try {
        const orders = req.body;

        function fetchID(data, callback) {
            var total_cost = 0;
            for (const index in data) {
                db.query("SELECT products.price, offers.quentity, offers.sale  FROM products INNER JOIN offers ON products.id = offers.product_id  WHERE products.id = ?",
                    data[index].product_id, function (err, result) {
                        if (result[0].quentity == 0 || result[0].quentity == null) {
                            total_cost = total_cost + result[0].quentity * result[0].price;
                        }else{
                            const rest = parseInt(data[index].counter / result[0].quentity);
                            total_cost = total_cost + result[0].quentity * result[0].price - rest* result[0].sale * result[0].price;
                        }
                        if(index == data.length-1){
                            callback(null, total_cost);
                        }
                    });
            }
        }

        fetchID(orders, function (err, content) {
            if (err) {
                console.log(err);
                res.send(err);
            } else {
                res.send(JSON.stringify({ total_cost:content }))
            }
        });

    } catch (error) {
        console.log(error);
        res.status(400).send({
            error: {
                message: "Failed",
            },
        });
    }
});

module.exports = router;
