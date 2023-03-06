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

## Author
Vivian Njoroge
## License
This application is licensed under the Apache 2.0