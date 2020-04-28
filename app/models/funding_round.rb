class FundingRound
    attr_reader :startup, :venture_capitalist,:type, :investment
    @@all = []

    def initialize(startup,venture_capitalist,type,investment )
        if investment > 0
            @startup = startup
            @venture_capitalist = venture_capitalist
            @type = type
            @investment = investment
        else
            nil
        end
        @@all << self
    end 

    def self.all
        @@all
    end
end
