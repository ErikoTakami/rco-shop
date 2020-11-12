class SearchesController < ApplicationController
  before_action :search
  
  def index
  end

  # def sort_order
  # end

  private

  def search
    @q = Item.ransack(params[:q])
    @result = @q.result
  end

end
