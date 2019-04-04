class TopController < ApplicationController

  def top
  end

  def index
    @lists = List.where(user_id: current_user).order("created_at DESC")
  end
end
