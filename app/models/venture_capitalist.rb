require 'pry'

#Define a VentureCapitalist class 
class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all.push(self)
    end

    def name
        @name
    end

    def total_worth
        @total_worth
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{|vc| vc.total_worth > 1000000000}
    end

    vc1 = VentureCapitalist.new("goldmans", 67)
    vc2 = VentureCapitalist.new("santander", 7000)
    vc3 = VentureCapitalist.new("trust", 1000000345)
    vc3 = VentureCapitalist.new("GB", 1000000346)

    binding.pry

end