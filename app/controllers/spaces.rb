class MakersBnb < Sinatra::Base


  get '/spaces' do
    @spaces = Space.all
    erb :'spaces/index'
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces' do
    Space.create(name: params[:name],
                  description: params[:description],
                  price: params[:price], available_from: params[:available_from],
                  available_to: params[:available_to],
                  :user => current_user)

    redirect '/spaces'
  end

  get '/spaces/:id' do
    @space = Space.first(id: params[:id])
    erb :'/spaces/request'
  end


end
