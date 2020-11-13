class SearchesController < ApplicationController
  before_action :search, only: [:index, :sort_order]
  
  def index
  end

  def sort_order
  end

  private

  def search
    @q = Item.ransack(params[:q])
    @results = @q.result
  end

end
