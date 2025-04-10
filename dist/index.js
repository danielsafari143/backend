"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const app = new express();
const port = 3000;
const cors = require("cors");
const bodyParser = require("body-parser");
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.get("/", (req, res) => {
    res.send("Hello World!");
});
app.listen(3000, () => {
    console.log(`Example app listening on port ${port}`);
});
