const express = require("express");
const mongoose = require("mongoose");
const app = express();

const PORT = process.env.PORT || 3000;
const DB ='mongodb+srv://chat_app:@cluster0.zt5yv.mongodb.net/?retryWrites=true&w=majority';
//IMPORTS FILES
const authRouter = require("./routes/auth");
//MIDDLEWARE
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(authRouter);

mongoose
  .connect(DB 
    )
  .then(() => {
    console.log("Connected to DB");
  })
  .catch((err) => {
    console.log("Error connecting to DB");
    console.log(err);
  });

app.listen(PORT, () => {
  console.log("Server running on port 3000");
});
