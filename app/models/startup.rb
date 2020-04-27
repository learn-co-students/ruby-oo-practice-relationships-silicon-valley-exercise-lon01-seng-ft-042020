class Startup
    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(name, domain)
        @name = name
        @domain = domain
    end

    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end

    def self.domains
        Startup.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capatalist, type, investment)
        FundingRound.new(self, venture_capatalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fundingRound| fundingRound.startup == self}
    end

    def num_funding_rounds
        funding_rounds.length
    end

    def total_funds
        funding_rounds.reduce(0) {|sum, fundingRound| sum + fundingRound.investment}
    end

    def investors
        funding_rounds.map {|fundingRound| fundingRound.venture_capitalist}.uniq
    end

    def big_investors
        investors && VentureCapitalist.tres_commas_club
    end

end
