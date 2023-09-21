const STATUSCODE = require("../utils/globalConst");
const myModele = require("../modeles/UIListsContent.js");

/***********************************************************************
 * Interroge the database and return a response in JSON format
 * Param:
 *  none
 * Return:
 *  JSON format of all delivery roles
 * Error:
 *  Send Status code BADREQUEST or OK.
 */
exports.getDeliveryRoles = (req, res, next) => {
  let userID = req.body.userID;

  myModele
    .getDeliveryRolesFromDB()
    .then((result) => {
      res.status(STATUSCODE.OK).json(result[0]);
    })
    .catch((err) => {
      console.log(err);
      res.status(STATUSCODE.BADREQUEST).json({
        message: "Error from the database: delivery Roles cannot be fetch.",
      });
    });
};

/***********************************************************************
 * Interroge the database and return a response in JSON format
 * Param:
 *  none
 * Return:
 *  JSON format of all blood groups
 * Error:
 *  Send Status code BADREQUEST or OK.
 */
exports.getBloodGroups = (req, res, next) => {
  let userID = req.body.userID;

  myModele
    .getBloodGroupsFromDB()
    .then((result) => {
      res.status(STATUSCODE.OK).json(result[0]);
    })
    .catch((err) => {
      console.log(err);
      res.status(STATUSCODE.BADREQUEST).json({
        message: "Error from the database: blood groups cannot be fetch.",
      });
    });
};
