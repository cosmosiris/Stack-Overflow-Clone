get '/sessions/new' do

  erb :'/sessions/new'
end

get '/sessions/:id' do
  erb :index
end

post '/sessions' do
  @user = User.find_by(username: params[:username])
  if @user.authenticate(params[:password])
    login(@user)
    redirect "/sessions/#{@user.id}"
  else
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end

