class UserController < Sinatra::Base
    set :default_content_type, 'application/json'
    # Add routes
     #  registers a new user to the data base
  post '/register' do
    begin
      users = User.create(@user)
      users.to_json
    rescue => e
      { error: e.message }.to_json
    end
  end
  post '/login' do
    user = User.find_by(email: params[:email], password: params[:password])
    if user
      { message: "Login successful!" }.to_json
    else
      { message: "Login failed. Invalid email or password." }.to_json
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