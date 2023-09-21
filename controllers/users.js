const STATUSCODE = require("../utils/globalConst");
const myModele = require("../modeles/user.js");

/***********************************************************************
 * Interroge the database and return a response in JSON format
 * Param:
 *  req must contain a field 'userID' that contain a valid userID (int)
 * Return:
 *  JSON format with the user info as define in users modele.
 *  Status code will be OK if database have return a valid result (result can be empty
 * Error:
 *  Send Status code BADREQUEST or OK.
 */
exports.getUserInfo = (req, res, next) => {
  let userID = req.body.userID;

  //Valid userID: must by a integer.
  if (userID === "" || isNaN(userID)) {
    res.status(STATUSCODE.BADREQUEST).json({
      message: "Cannot get User info because the userID is invalid.",
    });
  } else {
    myModele
      .getUserInfoFromDB(userID)
      .then((result) => {
        res.status(STATUSCODE.OK).json(
          result[0] //List of Active Pregnant Clients follow by userID (MySQL return an array of object(s): [0]=select query result [1]=db table shema)
        );
      })
      .catch((err) => {
        console.log(err);
        res.status(STATUSCODE.BADREQUEST).json({
          message: "Error from the database: user cannot be fetch.",
        });
      });
  }
};
