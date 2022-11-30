const sequelize  = require("sequelize");

const list = new sequelize('booklist', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

module.exports = list

