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
    dates = (Date.parse(params[:available_from])..Date.parse(params[:available_to])).to_a.join(",")
    if params[:imageurl].empty?
      params[:imageurl] = 'https://img.buzzfeed.com/buzzfeed-static/static/2014-05/enhanced/webdr02/19/4/enhanced-buzz-wide-29655-1400489139-7.jpg?no-auto'
    end
    space = Space.create(name: params[:name],
                  description: params[:description],
                  price: params[:price], dates: dates,
                  :user => current_user, imageurl: params[:imageurl])

    redirect '/spaces'
  end

  get '/spaces/filter' do
    all_spaces = Space.all
    date = Date.parse(params[:filter_date]).to_s
    @spaces = []
    all_spaces.each do |space|
      if space.dates.split(",").include?(date)
        @spaces << space
      end
    end
    erb :'spaces/index'
  end

  get '/spaces/:id' do
    @space = Space.first(id: params[:id])
    erb :'/spaces/request'
  end



end
