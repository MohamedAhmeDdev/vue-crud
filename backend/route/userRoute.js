const {
   createUser,
} = require("../controller/UserController");


const router = require('express').Router()
router.post('/',createUser);

module.exports = router;