const STATUSCODE = require("../utils/globalConst");

exports.getPosts = (req, res, next) => {
  res.status(STATUSCODE.OK).json({
    posts: [
      {
        title: "Dummy First Post",
        content: "This is the first post (dummy data)!",
      },
    ],
  });
};

exports.createPost = (req, res, next) => {
  const title = req.body.title;
  const content = req.body.content;

  //TODO: Create post in DB

  res.status(STATUSCODE.CREATED).json({
    message: "Post created successfully!",
    post: { id: new Date().toISOString(), title: title, content: content },
  });
};
