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

end
