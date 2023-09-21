const expressModule = require("express");
const myController = require("../controllers/UIListsContent");
const myRouter = expressModule.Router();

console.log("Route UIListContent reach!");

// GET /UIList/deliveryroles
myRouter.get("/deliveryroles", myController.getDeliveryRoles);
myRouter.get("/bloodgroups", myController.getBloodGroups);

module.exports = myRouter;
