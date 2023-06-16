import sql from "mssql";
import config from "../db/config.js";


// GET ALL BLOGS
export const allUsers = async (req, res) => {
    try {
      let pool = await sql.connect(config.sql);
      const result = await pool.request().query("SELECT * FROM Users");
      res.json(result.recordset);
    } catch (error) {
      res.status(201).json(error.message);
    } finally {
      sql.close();
    }
  };
  
  export const deleteUser = async (req, res) => {
    try {
      const { id } = req.params;
      let pool = await sql.connect(config.sql);
      await pool
        .request()
        .input("id", sql.VarChar, id)
        .query(`DELETE FROM Users WHERE user_id = @id`);
      res.status(200).json("User deleted successfully");
    } catch (error) {
      res.status(500).json(error.message);
    } finally {
      sql.close();
    }
  };
  
