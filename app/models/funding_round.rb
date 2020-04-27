class FundingRound

    attr_accessor :type, :investment
    attr_reader :company, :vc
     
    @@all = [ ]

#NOTE: investment should be a float (.to_f) that is not a negative number(>0)
   def initialize(company, vc, type, investment)
       @company = company
       @vc = vc
       @type = type #Angel, Pre-Seed, Seed, Series A, Series B, Series C
       @investment = investment.to_f
       @@all << self
   end

 #Instance method that returns the startup object for that given funding round
   def startup
       self.company
   end

 #Instance method that returns the VC object for that given funding round
   def venture_capitalist
       self.vc
   end

 #Class method that returns an array of all of the funding rounds  
   def self.all
       @@all
   end

end
