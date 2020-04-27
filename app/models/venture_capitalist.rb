class VentureCapitalist
    
    attr_accessor :name, :total_worth
     
    @@all = [ ]

#Each VC object should be initialized a name (string), a total worth (integer)
   def initialize(name, total_worth)
       @name = name
       @total_worth = total_worth
       @@all << self
   end

 #Class method that returns an array of all of the VentureCapitalist instances  
   def self.all
       @@all
   end

 #Class method that returns an array of all venture capitalists in the Trés Commas club
   def self.tres_commas_club
       self.all.select{|vc| vc.total_worth > 1000000000}
   end

 #Instance method that creates a new funding round
    def offer_contract(company, type, investment)
        FundingRound.new(company, self, type, investment)
    end

 #Instance method that returns all the funding rounds for a VC
    def funding_rounds
        FundingRound.all.select{|round| round.vc == self}
    end 

 #Instance method that returns a unique array of all the startups this VC has funded
    def portfolio
        self.funding_rounds.map{|round| round.company}.uniq
    end    

#Instance method that returns the largest funding round given by this VC
    def biggest_investment
        self.funding_rounds.max_by{|round| round.investment}
    end  

 #Instance method that given a domain string, returns all the investments made to that company
    def find_by_domain(domain)
        self.funding_rounds.select{|round| round.company.domain == domain}
    end 

 #Instance method that given a domain string, returns the total amount invested in that domain
    def invested(domain)
        self.find_by_domain(domain).sum{|round| round.investment}
    end 
    
end
