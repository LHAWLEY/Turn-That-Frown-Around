post '/votes' do
  vote = current_user.votes.create(params[:vote])

  content_type :json
  {
    success: vote.valid?,
    votes:   vote.video.votes.count
  }.to_json
end

post '/votes/:id/delete' do
  vote = current_user.votes.find_by(params[:vote])
  vote.destroy

  content_type :json
  {
    success: vote.destroyed?,
    votes:   vote.video.votes.count
  }.to_json
end
