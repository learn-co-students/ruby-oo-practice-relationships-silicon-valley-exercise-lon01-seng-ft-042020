class VentureCapitalist
    attr_reader :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.tres_commas_club
        self.all.select {|venture_capitalist| venture_capitalist.total_worth > 1000000000}
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fundingRound| fundingRound.venture_capitalist == self}
    end

    def portfolio 
        funding_rounds.map {|fundingRound| fundingRound.startup}.uniq
    end

    def biggest_investment
        funding_rounds.max_by {|fundingRound| fundingRound.investment}
    end

    def invested(domain)
        funding_rounds_in_domain = funding_rounds.select {|fundingRound| fundingRound.startup.domain == domain}
        funding_rounds_in_domain.reduce(0) {|sum, fundingRound| sum +fundingRound.investment}
    end

end
