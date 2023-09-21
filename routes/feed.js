const expressModule = require("express");

const feedController = require("../controllers/feed");

const myRouter = expressModule.Router();

// GET /feed/posts
myRouter.get("/posts", feedController.getPosts);

// POST /feed/post
myRouter.post("/post", feedController.createPost);

module.exports = myRouter;
