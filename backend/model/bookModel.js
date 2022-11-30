const { DataTypes } = require("sequelize")
const database = require("../db")


const book = database.define('books', {
    author: {
        type: DataTypes.STRING
    },
    title: {
        type: DataTypes.STRING
    },
    description: {
        type: DataTypes.STRING
    },
})

module.exports = book