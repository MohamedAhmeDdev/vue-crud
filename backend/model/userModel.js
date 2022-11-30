const { DataTypes } = require("sequelize")
const database = require("../db")


const user = database.define('users', {
    name: {
        type: DataTypes.STRING
    },
    email: {
        type: DataTypes.STRING
    },
    password: {
        type: DataTypes.STRING
    },
})

module.exports = user