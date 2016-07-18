post '/comments' do
  comment = current_user.comments.create(params[:comment])

  content_type :json
  { success: comment.valid?, body: comment.body }.to_json
end