const express = require("express");
const User = require("../models/auth");

const authRouter = express.Router();

authRouter.post("/api/signup", async (req, res) => {
  const { name, email, password } = req.body;
  try {
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json({ message: "User already exists" });
    }
    let user = new User({
      name,
      email,
      password,
    });
    await user.save();
    res.status(201).json({ message: "User created" });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = authRouter;
