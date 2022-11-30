const user = require("../model/userModel")

const createUser = async (req, res) => {
    const {password, confirm_password} =req.body

    if(password === confirm_password){
        res.json({ message: "correct" });
    }else{
        return res.sendStatus(400)
    }
    
    try {
        await user.create(req.body);
        res.json({
            "message": "Created"
        });
    } catch (error) {
        res.json({ message: error.message });
    }
}



module.exports = {
    createUser,
}