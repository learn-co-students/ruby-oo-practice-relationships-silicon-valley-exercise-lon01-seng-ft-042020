class Startup

    attr_accessor :name, :domain
    attr_reader :founder
     
    @@all = [ ]

   def initialize(name, founder, domain)
       @name = name
       @founder = founder
       @domain = domain
       @@all << self
   end

#Instance method that changes the domain and name of the startup instance
   def pivot(domain, name)
       self.domain = domain
       self.name = name
   end

 #Class method that returns an array of all of the startup instances  
   def self.all
       @@all
   end

 #Class method that returns the first startup whose founder's name matches
    def self.find_by_founder(founder)
        self.all.find{|startup| startup.founder == founder}
    end

 #Class method that returns an array of all of the different startup domains  
   def self.domains
       self.all.map{|startup| startup.domain}
   end

 #Instance method that creates a new funding round
   def sign_contract(vc, type, investment)
       FundingRound.new(self, vc, type, investment)
   end

 #Instance method that returns all the funding rounds for a startup instance
    def all_funds
       FundingRound.all.select{|round| round.company == self}
    end  
   
 #Instance method that returns the total number of funding rounds that the startup has gotten
    def num_funding_rounds
        self.all_funds.count
    end

 #Instance method that returns the total sum of investments that the startup has gotten
    def total_funds
        self.all_funds.sum{|round| round.investment}
    end

 #Instance method that returns a unique array of all the VCs that have invested in this company
    def investors
        self.all_funds.map{|round| round.vc}.uniq
    end   

 #Instance method that returns a unique array of all the Trés Commas club VCs that have invested in this company
    def big_investors
        self.investors.select{|vc| vc.total_worth > 1000000000}
    end     
    
end
