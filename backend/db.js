const sequelize  = require("sequelize");

const list = new sequelize('', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

module.exports = list

