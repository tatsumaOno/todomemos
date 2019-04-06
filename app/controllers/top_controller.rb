class TopController < ApplicationController

  def top
  end

  def index
    @lists = List.where(user_id: current_user).order("created_at DESC")
  end

  # def lists
  #   @lists = List.all
  #   render json: { lists: @lists.to_json(include: :cards) }
  # end
end
