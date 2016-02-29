class ProfilesController < ApplicationController
  def show
    @users = Users.all
  end

  def index
    @user = User.find(params[:id])
  end
end
