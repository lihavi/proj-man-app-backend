class UserController < Sinatra::Base
    set :default_content_type, 'application/json'
    #Routes for the users
    post '/users/login' do
      begin
        data = JSON.parse(request.body.read)
        username = data['username']
        password = data['password']

        user = User.find { |u| u[:username] == username }
    
        if user && BCrypt::Password.new(user[:password_digest]) == password
          content_type :json
          { id: user[:id], username: user[:username] }.to_json
        else
          halt 401, 'Unauthorized'
        end
      rescue JSON::ParserError
        halt 400, 'Bad request'
      rescue StandardError => e
        halt 500, "Internal server error: #{e.message}"
      end
    end

    get '/users' do 
      users = User.all.order(created_at: :asc)
      users.to_json
    end
    post '/users' do
      user = User.create(
        username: params[:username],
        email: params[:email],
        password: params[:password]
      )
      user.to_json
    end
    patch '/users/:id' do
      user = User.find(params[:id])
      user.update(
        username: params[:username],
        email: params[:email],
        password: params[:password]
      )
      user.to_json
    end
  
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end
  end
  