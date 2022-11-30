const {
 createBook,
 getBook,
 getBookById,
 deleteBook,
 updateBook
} = require("../controller/bookController");

const router = require('express').Router()
router.post('/', createBook);
router.get('/', getBook);
router.get('/:id', getBookById);
router.patch('/:id', updateBook);
router.put('/:id', updateBook);
router.delete('/:id', deleteBook);


module.exports = router;