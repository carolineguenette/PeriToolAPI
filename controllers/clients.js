const STATUSCODE = require("../utils/globalConst");
const clientModele = require("../modeles/client.js");

exports.getClientsList = (req, res, next) => {
  let userID = req.body.userID;

  //Valid userID: must by a integer.
  if (isNaN(userID)) {
    res.status(STATUSCODE.BADREQUEST).json({
      message:
        "Cannot get Clients list for this user because this userID is invalid.",
    });
  } else {
    //TODO: Get List of Clients in DB with specifie params

    clientModele
      .getActivePregnantClientsFromDB(userID)
      .then((result) => {
        res.status(STATUSCODE.OK).json(
          result[0] //List of Active Pregnant Clients follow by userID
        );
      })
      .catch((err) => {
        console.log(err);
        res.status(STATUSCODE.BADREQUEST).json({
          message: "Error from the database: clients cannot be fetch.",
        });
      });
  }
};
