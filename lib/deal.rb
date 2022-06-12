class Deal

    attr_accessor :pricetag, :expirydate, :productname, :storename
    @@all = []

    def initialize
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.reset_all
        @@all.clear
    end

end