class MakersBnb < Sinatra::Base

  post '/request/:id' do
    Request.create(:user  => current_user,
                   :space => Space.first(id: params[:id]))

    redirect '/spaces'
  end



end
