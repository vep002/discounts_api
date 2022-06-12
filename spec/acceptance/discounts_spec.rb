require 'rails_helper'
require 'rspec_api_documentation'
require 'rspec_api_documentation/dsl'

resource "Discounts" do
    #header
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


    get "/discounts/:id" do
    context "when id is valid" do
        let(:id) { discount.id }

        example_request "Getting a discount by id" do
            expect(response_body).to eq(discount.to_json)
            expect(status).to eq(200)
        end
    end

    context "when id is invalid" do
        let(:id) { "invalid" }

        example_request "Getting an error" do
            expect(request).to raise_error(ActiveRecord::RecordNotFound)
            # expect(response_body).to eq({ :error => "Discount not found" }.to_json)
            # expect(status).to eq(404)
        end
    end
end
end
