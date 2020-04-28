class Startup
    attr_reader :founder
    attr_accessor :name, :domain
    @@all = []

    def initialize(name,founder,domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain,name)
        @domain = domain
        @name = name
    end

    def sign_contract(vc,type, investment)
        FundingRound.new(self,vc,type, investment)
    end

    def funding_rounds
        FundingRound.all.select{|fr| fr.startup == self}
    end

    def num_funding_rounds
         funding_rounds.length
    end

    def total_funds
        funding_rounds.map{|fr| fr.investment}.sum
    end
    
    def investors
        funding_rounds.map{|fr| fr.venture_capitalist}.uniq
    end
    
    # def big_investors

    # end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        Startup.all.find{|startup|startup.founder == founder}
    end

    def self.domains
        Startup.all.map{|startup| startup.domain}.uniq
    end
end
