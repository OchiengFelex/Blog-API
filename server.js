import express from 'express';
import config from "./src/db/config.js";
import bodyParser from 'body-parser';
import user from "./src/Routers/routes.js";

const app= express();


app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.json());

user(app);


app.listen(config.port, () => {
    console.log(`output displaied at ${config.url}`);
});