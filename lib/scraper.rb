require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'
require 'csv'

require_relative './deal.rb'

class Scraper

  def scrape_deals_to_json
    deal_hash = []
    doc = Nokogiri::HTML(URI.open("https://www.mygrocerydeals.com/deals?utf8=%E2%9C%93&authenticity_token=mYihlRaFe7qwtYPXMORvbgyqYhnLuEjcysh6LfMec0VuRt1w8a4HdD9ftrhCIUY1dI0o%2B%2B73GOC9yvX5x1%2F%2FGA%3D%3D&remove%5B%5D=chains&remove%5B%5D=categories&remove%5B%5D=collection&remove%5B%5D=collection_id&q=&supplied_location=55409&latitude=44.9296117&longitude=-93.2835137"))
    doc.css(".deal").each do |item|
        deal = Deal.new
        deal.pricetag = item.css(".pricetag").text
        deal.expirydate = item.css(".expirydate").text
        deal.productname = item.css(".deal-productname").text
        deal.storename = item.css(".deal-storename").text
        deal_hash << {
            "price" => deal.pricetag,
            "expiration" => deal.expirydate,
            "product" => deal.productname,
            "store" => deal.storename
        }
      end
    File.open("deals.json", "w") do |f|
    f.write(deal_hash.to_json)
    end
  end

end

Scraper.new.scrape_deals_to_json