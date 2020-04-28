class VentureCapitalist
    attr_reader :name, :total_worth
    @@all = []

    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def offer_contract(startup,type, investment)
        FundingRound.new(startup,self,type, investment)
    end

    def funding_rounds
        FundingRound.all.select{|fr| fr.venture_capitalist == self}
    end

    def portfolio
        funding_rounds.map{|fr| fr.startup}.uniq
    end

    def biggest_investment
        funding_rounds.max_by{|fr| fr.investment}
    end

    # def startups
    #     funding_rounds.map{|fr| fr.startup}
    # end

    # def domains
    #     startups.map{|startup| startup.domain}
    # end

    # def startups_by_domain(domain)
    #     startup.select{|startup| startup.domain == domain}
    # end

    # def invested(domain)
    #     startups_by_domain(domain).
    # end

    ##### find fundingrounds by domain
    ## then check how much they invested

    def self.all
        @@all
    end
    
    def self.tres_commas_club
        VentureCapitalist.all.select{|vc| vc.total_worth >= 1000000000}
    end
end
