get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  @confirmed = params[:user][:password] == params[:password_confirmation]
  if @confirmed && @user.save
    login(@user)
    redirect "/sessions/#{session.id}"
  else
    @errors = @user.errors.full_messages
    @errors << "you shall not pass" unless @confirmed
    erb :'users/new'
  end
end
