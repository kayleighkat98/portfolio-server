
# My Portfolio Server 
## Link to the live project
* VERCEL URL:    
* HEROKU URL:    
## Documentation of the API.
### ROUTES:
* login {POST}
    * '/api/auth'
* user {POST}
    * '/api/user'
## Screenshot(s)

## Summary
This server is made to support my portfolio (you can find the link above). Use it to store detailed data about your past projects including your role, images of the result, steps of the production process and of course, the final result!
## Technology
### REGULAR DEPENDENCIES:
* bcryptjs
* cors
* dotenv
* express
* helmet
* jsonwebtoken
* knex
* morgan
* pg
* postgrator-cli
### DEV DEPENDENCIES:
* chai
* mocha
* nodemon
* supertest
### Seed the database

psql -U postgres -d portfolio -f ./seeds/seed.tables.sql




