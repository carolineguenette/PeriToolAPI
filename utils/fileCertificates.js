const fs = require("fs");
const SSLCertificates = {
  key: fs.readFileSync("./localhost-key.pem"),
  cert: fs.readFileSync("./localhost.pem"),
};

module.exports = SSLCertificates;
