class CardController < ApplicationController
  before_action :set_card, only: [:show,:edit,:update,:destroy]
  def new
    @card = Card.new
    @list = List.find(params[:list_id])
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      @card.create_activity :create, owner: current_user
      redirect_to :root
    else
      @card.valid?
      render :new
    end
  end

  def show
  end

  def edit
    @lists = List.where(user_id: current_user)
  end

  def update
    if @card.update_attributes(card_params)
      redirect_to :root
    else
      @card.valid?
      render :edit
    end
  end

  def destroy
    @complete_card = CompleteCard.new();
    @complete_card.save
    @card.destroy
    redirect_to :root
  end

private
  def card_params
    params.require(:card).permit(:title, :memo, :list_id)
  end
  def set_card
    @card = Card.find(params[:id])
  end
end
