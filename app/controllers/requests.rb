class MakersBnb < Sinatra::Base

  post '/requests/:id' do
    Request.create(:user  => current_user,
                   :space => Space.first(id: params[:id]))

    redirect '/spaces'
  end

  get "/requests" do
    erb :"/requests/index"
  end



end
