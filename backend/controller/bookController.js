const book = require("../model/bookModel")

const createBook = async (req, res) => {
    try {
        await book.create(req.body);
        res.json({
            "message": "Created"
        });
    } catch (error) {
        res.json({ message: error.message });
    }
}

const getBook = async (req, res) => {
    try {
        const books = await book.findAll();
        res.json(books);
    } catch (error) {
        res.json({ message: error.message });
    }
}

const getBookById = async (req, res) => {
    let id = req.params.id
    try {
        const books = await book.findOne({where: { id: id }});
        res.status(200).send(books)
    } catch (error) {
        res.json({ message: error.message });
    }
}



const deleteBook = async (req, res) => {
    try {
        await book.destroy({where: {id: req.params.id}});
        res.json({
            "message": "Deleted"
        });
    } catch (error) {
        res.json({ message: error.message });
    }
}

const updateBook = async (req, res) => {
    try {
        await book.update(req.body, {where: {id: req.params.id }});
        res.json({
            "message": "Updated"
        });
    } catch (error) {
        res.json({ message: error.message });
    }
}

module.exports = {
    createBook,
    getBook,
    getBookById,
    deleteBook,
    updateBook
}