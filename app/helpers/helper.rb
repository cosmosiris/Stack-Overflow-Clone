def login(user)
  session[:id] = user.id
end

def logged_in?
  !!session[:id]
end

def current_user
  @current_user ||= User.find(session[:id]) if session[:id]
end

def logout
  session[:id] = nil
end

def total_upvotes(current_post)
  current_post.votes.reduce(0){|sum, vote| sum + vote.up_vote}
end
