post '/votes' do
  p "*" * 50
  p params
  Vote.create(params[:vote])
  redirect "/posts"
end
