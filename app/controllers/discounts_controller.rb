class DiscountsController < ApplicationController
    def index
        @discounts = Discount.all

        render json: @discounts
    end
end
