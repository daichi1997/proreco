class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @pro_recos = @user.pro_recos.order(created_at: :desc).page(params[:page]).per(10)
  end
end