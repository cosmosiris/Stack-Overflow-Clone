get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/posts/new' do
  erb :'/posts/new'
end

post '/posts' do
  Post.create(params[:post])
  redirect '/posts'
end

get '/posts/:id' do
  @posts = Post.all
end

delete '/posts' do
  Post.find(params[:post_id]).destroy
  redirect '/posts'
end
