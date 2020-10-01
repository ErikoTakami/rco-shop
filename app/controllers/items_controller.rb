class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :admin_check, only: [:new, :create]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:title, :artist, :text, :genre_id, :country, :format_id, :status_id, :price, :stock, :image)
  end

  def admin_check
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
