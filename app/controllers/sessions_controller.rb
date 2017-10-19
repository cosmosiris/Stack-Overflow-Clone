get '/sessions/new' do

  erb :'/sessions/new'
end

get '/sessions/:id' do
  erb :index
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  #authentication method
  #if authentication passes login user
  login(@user)
  #else redirect to erb
end
