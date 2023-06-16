import dotenv from 'dotenv'
import assert from 'assert'


dotenv.config();

const{
    PORT, 
    HOST,
    HOST_URL,
    SQL_USER,
    SQL_PWD,
    SQL_SERVER,
    SQL_DB
}= process.env

const sqlEncrypt= process.env.SQL_ENCRYPTED === 'true';

assert(PORT,'PORT is required');
assert(HOST, 'HOST is required');

const config = {
    port:PORT,
    host:HOST,
    url: HOST_URL,
    sql:{
        server: SQL_SERVER,
        user: SQL_USER,
        passward: SQL_PWD,
        database:SQL_DB,
        options:{
            encrypt : sqlEncrypt,
            enableArithAbout: true
        }
    }
};


export default config;