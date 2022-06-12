require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

resource "Discounts" do
    #heade
    #header

    explanation "This is an API for discounts"

    let(:discount) { Discount.create(price: "10", expiration: "10/10/2020", product: "apple", store: "walmart") }

    get "/discounts" do
        #authentication
        #parameter

        example_request "Getting ist of discounts" do
        expect(response_body).to eq(Discount.all.to_json)
        expect(status).to eq(200)
        end
    end
end
