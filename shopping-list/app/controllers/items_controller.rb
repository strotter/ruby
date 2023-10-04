# app/controllers/items_controller.rb

class ItemsController < ApplicationController
  # If you're using Rails API mode, you might want to skip the authenticity token check for simplicity
  # skip_before_action :verify_authenticity_token

  def create
    item = Item.new(item_params)

    if item.save
      render json: item, status: :created
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    item = Item.find(params[:id])

    if item.destroy
      render json: { message: 'Item deleted successfully' }, status: :ok
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end 