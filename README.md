 # Project Management App

The project management app  is a server-side API built using Ruby's Sinatra DSL The API follows the MVC design pattern, and it provides a backend for a React-based frontend. The API supports all CRUD operations, including POST, DELETE, and PATCH, as well as authentication for secure user access.

Here are the links to the repositories
 * [Frontend repository](https://github.com/lihavi/proj-man-app)
 * [Backend repository](https://github.com/lihavi/proj-man-app-backend)

 ## Build with 
 This application has been built with the following tools:
  * Ruby 
  * SQlite3 
  * ActiveRecord 
  * Rake
  * Puma 
  * rerun 
  * Sinatra 

## Setup
You can setup this repository by following this manual

1. Clone the repository git@github.com:lihavi/proj-man-app-backend.git
    
   
2. Ensure the ruby gems are setup in your machine
   
   bundle install
   
3. Perform any pending database migrations
  
   rake db:migrate
  
4. Run the application
   
    bundle exec rake server
   
5. Open the application from your browser
    
   http://localhost:9292

## Application
This application allows users to 
* Users should be able to register / login to the application
* A user should be able to create a project and add details about it.
* A user should be able to add other users as members of the project.
* Members of a project should be able to update the status of the project.
* A user should  be able to view all the projects.
* A user should be able delete a project.
* A user should be able to view all the status updates of the project.

## Models
Database schema definitions

USER
|| Column Name       | Data Type     | Description                                      |
|-------------------|---------------|--------------------------------------------------|
| id                | integer       | Unique identifier for the user                   |
| username          | string        | User's username                                  |
| email             | string        | User's email address                             |
| password_digest   | string        | Encrypted password for user authentication       |
| created_at        | datetime      | Timestamp for when the user was created          |
| updated_at        | datetime      | Timestamp for when the user was last updated     |

MEMBERS
| Column Name | Data Type | Description                                            |
|-------------|-----------|--------------------------------------------------------|
| id          | integer   | Unique identifier for the member                       |
| name        | string    | The name of the member                                  |
| email       | text      | The email address of the member                         |
| user_id     | integer   | The ID of the user associated with the member           |
| project_id  | integer   | The ID of the project associated with the member        |
| created_at  | datetime  | Timestamp for when the member was created               |
| updated_at  | datetime  | Timestamp for when the member was last updated          |

PROJECTS
| Column Name | Data Type | Description                                 |
|-------------|-----------|---------------------------------------------|
| id          | integer   | Unique identifier for the project            |
| name        | string    | The name of the project                      |
| title       | string    | The title of the project                     |
| description | string    | A brief description of the project           |
| created_at  | datetime  | Timestamp for when the project was created   |
| updated_at  | datetime  | Timestamp for when the project was last updated |


## Author
Vivian Njoroge
## License
This application is licensed under the Apache 2.0