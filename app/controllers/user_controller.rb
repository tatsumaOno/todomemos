class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @activities = PublicActivity::Activity.order('created_at DESC').where(owner_id: @user.id)
  end
end
