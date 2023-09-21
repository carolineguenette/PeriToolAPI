const expressModule = require("express");
const myController = require("../controllers/users");
const myRouter = expressModule.Router();

console.log("Route users reach!");

// POST /clients/post
myRouter.post("/infos", myController.getUserInfo);

module.exports = myRouter;
