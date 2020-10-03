class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy]
  before_action :item_find, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.order('created_at DESC')
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

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :artist, :text, :genre_id, :country, :format_id, :status_id, :price, :stock, :image)
  end

  def admin_check
    redirect_to root_path unless current_user.admin?
  end

  def item_find
    @item = Item.find(params[:id])
  end
end
