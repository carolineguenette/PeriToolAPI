const expressModule = require("express");

const myHttps = require("https");
const myBodyParser = require("body-parser");

const usersRoutes = require("./routes/users");
const clientsRoutes = require("./routes/clients");
const feedRoutes = require("./routes/feed");
const UIListsContentRoutes = require("./routes/UIListsContent");

const db = require("./utils/mySqlDb");

const app = expressModule();

//const FILECERTIFICATES = require("./utils/fileCertificates");
const fs = require("fs");
const FILECERTIFICATES = {
  key: fs.readFileSync(
    "C:/Users/Lenvo/Documents/Nodejs/PeriTool/localhost-key.pem"
  ),
  cert: fs.readFileSync(
    "C:/Users/Lenvo/Documents/Nodejs/PeriTool/localhost.pem"
  ),
};

console.log("API PeriTool reach (console.log from the App)!");

// Setup for permissions from other server
app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  //res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, PATCH, DELETE");
  res.setHeader("Access-Control-Allow-Methods", "*");
  //res.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization");
  res.setHeader("Access-Control-Allow-Headers", "*");
  next();
});

// Setup body-parser for JSON
app.use(myBodyParser.json());

// Routing the Http request
app.use("/feed", feedRoutes);
app.use("/clients", clientsRoutes);
app.use("/users", usersRoutes);
app.use("/UILists", UIListsContentRoutes);

const server = myHttps.createServer(FILECERTIFICATES, app);
server.listen(8080);
//app.listen(8080);
