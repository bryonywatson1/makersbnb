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

  get '/spaces/:id' do
    @space = Space.first(id: params[:id])
    erb :'/spaces/request'
  end

  post '/spaces/filter' do
    session[:filter_date] = params[:filter_date]
    filter_date = session[:filter_date]
    available_date = AvailableDate.first
    @spaces = filter_date ? available_date.spaces : []
    redirect '/spaces'
  end


end
