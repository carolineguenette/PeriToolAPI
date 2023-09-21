const expressModule = require("express");
const myController = require("../controllers/clients");
const myRouter = expressModule.Router();

// POST /clients/post
myRouter.post("/list", myController.getClientsList);

module.exports = myRouter;
