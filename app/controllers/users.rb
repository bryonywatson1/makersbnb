class MakersBnb < Sinatra::Base

  get "/users/new" do
    @user = User.new
    if current_user
      redirect to("/spaces")
    end
    flash.now[:notice] = ""
    erb :"users/new"
  end

  post "/users" do
    @user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect to("/spaces")
    else
      flash.now[:notice] = @user.errors.full_messages
      # || "Password and confirmation password do not match"
      erb :"users/new"
    end
  end

end
