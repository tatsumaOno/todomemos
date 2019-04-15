class TopController < ApplicationController

  def top
  end

  def index
    @lists = List.where(user_id: current_user).order("created_at DESC")
  end

  def search
    @cards = Card.where('title LIKE(?)',"%#{params[:keyword]}%").limit(10)
    respond_to do |format|
      format.html
      format.json
    end

  end

  # def lists
  #   @lists = List.all
  #   render json: { lists: @lists.to_json(include: :cards) }
  # end
end
