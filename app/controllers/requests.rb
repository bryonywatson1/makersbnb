class MakersBnb < Sinatra::Base

  post '/requests/:id' do
    date = Date.parse(params[:requested_date])
    date1 = AvailableDate.first(date: date)
    request = Request.create(:user  => current_user,
                  :available_date_space => AvailableDateSpace.first(space_id: params[:id], available_date_id: date1.id),
                  :space => Space.first(id: params[:id]),
                  :available_date => date1)
    redirect '/spaces'
  end

  get "/requests" do
     spaces = Space.all(user_id: current_user.id)
     spaces.each do |space|
       @requests = Request.all(available_date_space_space_id: space.id)
     end
     p @requests
     erb :"/requests/index"
   end

  post "/requests/booking/:id" do
    request = Request.first(id: params[:id])
    request.update(:status => "Confirmed")
    redirect to "/requests"
  end

end
