const express = require("express");
import { Request, Response } from "express";

const app = new express();
const port = 3000;
const cors = require("cors");
const bodyParser = require("body-parser");

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req: Request, res: Response) => {
  res.json({data : {text : "hello wolrd "}}).status(200);
});

app.listen(3000, () => {
  console.log(`Example app listening on port ${port}`);
});

export default app;
