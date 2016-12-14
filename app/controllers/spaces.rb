class MakersBnb < Sinatra::Base

enable :sessions
  get '/spaces' do
    @spaces = Space.all
    erb :'spaces/index'
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces' do
    space = Space.create(name: params[:name],
                  description: params[:description],
                  price: params[:price], available_from: params[:available_from],
                  available_to: params[:available_to],
                  :user => current_user)
    available_dates = (Date.parse(params[:available_from])..Date.parse(params[:available_to])).to_a
    available_dates.each do |available_date|
      space.available_dates << AvailableDate.first_or_create(date: available_date)
    end
    space.save
    redirect '/spaces'
  end

  get '/spaces/filter' do
    date = AvailableDate.first(date: (Date.parse(params[:filter_date])))
    nights = date ? AvailableDateSpace.all(available_date_id: date.id) : []
    @spaces = []
    nights.each do |night|
      @spaces << Space.get(night.space_id)
    end
    erb :'spaces/index'
  end

  get '/spaces/:id' do
    @space = Space.first(id: params[:id])
    erb :'/spaces/request'
  end



end
