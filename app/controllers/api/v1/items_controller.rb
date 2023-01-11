module Api
  module V1
      class ItemsController < ApplicationController
        def index
          render json: Item.all
        end

        def create
          item = Item.new(itemName: params[:itemName], price: params[:price])

          if item.save
            render json: item, status: :created
          else
            render json: item.errors, status: :unprocessable_entity
          end
        end

        # to destroy an item, aka remove it from database

        def destroy
          Item.find(params[:id]).destroy!

          head :no_content
        end

        private

        def item_params
          params.require(:item).permit(:itemName, :price)
        end
      end
    end
  end
