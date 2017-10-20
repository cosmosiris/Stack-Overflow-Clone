get '/' do
  @posts = Post.all
 erb :index
end

# put '/votes' do
#   @
# end


