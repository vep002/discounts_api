

if Discount.count == 0
    puts "Seeding discounts..."
    path = File.join(File.dirname(__FILE__), "./deals.json")
    records = JSON.parse(File.read(path))
    records.each do |record|
      Discount.create!(record)
    end
    puts "Discounts seeded."
  end