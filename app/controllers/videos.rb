get '/videos' do
  @videos = Video.all.order(created_at: :desc)

  erb :'index'
end

get '/videos/new' do

  erb :'videos/new'
end

post '/videos' do
  current_user.videos.create(params[:video])

  redirect '/videos'
end

get '/videos/:id/comments' do
  video = Video.find_by(id: params[:id])
  comments = video.comments.pluck(:body)

  content_type :json
  { comments: comments }.to_json
end




