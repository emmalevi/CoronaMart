class ItemsController < ApplicationController

before_action :set_item, only: [:show, :edit, :update, :destroy]

def index
    if params[:query].present?
      @query = params[:query]
      @items = Item.where("name iLike '%#{params[:query]}%'")
    else
      @items = Item.all
    end
  end

def show
end












	private


	def set_item
	  @item= Item.find(params[:id])
	end


	def item_params
	  params.require(:item).permit(:name, :description, :price)
	end

end
