class MakersBnb < Sinatra::Base

  post '/requests/:id' do
    date = Date.parse(params[:requested_date])
    request = Request.create(:user  => current_user,
                  :space => Space.first(id: params[:id]),
                  date: date)
    redirect '/requests'
  end

  get "/requests" do
     spaces = Space.all(user_id: current_user.id)
     @received_requests = []
     spaces.each do |space|
       @received_requests << Request.all(space_id: space.id)
     end
     @received_requests.flatten!
     @sent_requests = Request.all(user_id: current_user.id)
     erb :"/requests/index"
   end

  post "/requests/booking/:id" do
    request = Request.first(id: params[:id])

    other_requests = Request.all(:date => request.date, :space => request.space)

    other_requests.each do |request|
      request.update(:status => "Denied")
    end

    request.update(:status => "Confirmed")

    redirect to "/requests"
  end

end
