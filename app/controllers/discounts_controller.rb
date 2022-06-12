class DiscountsController < ApplicationController
    def index
        @discounts = Discount.all

        render json: @discounts
    end

    def show
        discount = Discount.find(params[:id])
        if discount
               render :json => discount
          else
               render :json => { :error => "Discount not found" }, :status => 404
         end
     end
end
