class MakersBnb < Sinatra::Base

  post '/requests/:id' do
    Request.create(:user  => current_user,
                   :space => Space.first(id: params[:id]))

    redirect '/spaces'
  end

  get "/requests" do
    @spaces = Space.all(user_id: current_user.id)
    erb :"/requests/index"
  end

  post "/requests/booking/:id" do
    request = Request.first(id: params[:id])
    request.update(:status => "Confirmed")
    redirect to "/requests"
  end

end
