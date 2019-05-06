class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user.degree
    @activities = PublicActivity::Activity.order('created_at DESC').where(owner_id: @user.id)
    @complete_cards = CompleteCard.group("date(created_at)").select("date(created_at)").where(user_id: @user.id).count
  end
end
