import { allUsers,
        deleteUser, 
        } from "../controllers/controlers.js";

const users = (app) =>{
    app.route("/users").get(allUsers).post(allUsers);

    app.route("/users/:id").get(deleteUser).delete(deleteUser);

   //
};


export default users;