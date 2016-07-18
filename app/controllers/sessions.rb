get "/sessions/new" do

  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])

  if @user.password == params[:password]
    session[:user_id] = @user.id

    redirect "/videos"
  else
    redirect '/sessions/new'
  end
end

get '/sessions' do
  session[:user_id] = nil

  redirect '/sessions/new'
end

get '/sessions/delete' do # Should potentially be a post or a delete route, make more restful.
  session[:user_id] = nil

  redirect '/'
end

