class MakersBnb < Sinatra::Base

  post '/requests/:id' do
    date = Date.parse(params[:requested_date])
    request = Request.create(:user  => current_user,
                  :space => Space.first(id: params[:id]),
                  date: date)
    redirect '/spaces'
  end

  get "/requests" do
     spaces = Space.all(user_id: current_user.id)
     @received_requests = []
     spaces.each do |space|
       @received_requests << Request.all(available_date_space_space_id: space.id)
     end
     @received_requests.flatten!
     erb :"/requests/index"
   end

  post "/requests/booking/:id" do
    request = Request.first(id: params[:id])
    request.update(:status => "Confirmed")
    redirect to "/requests"
  end

end
