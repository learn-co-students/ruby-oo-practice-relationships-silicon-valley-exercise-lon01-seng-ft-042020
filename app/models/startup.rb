require 'pry'

class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all.push(self)
    end

    def name
        @name
    end

    def founder
        @founder
    end

    def domain
        @domain
    end

    def pivot(new_name, new_domain)
        @name = new_name
        @domain = new_domain
    end

    def self.all
        @@all
    end

    def self.domains
        self.all.map{|startup| startup.domain}
    end

    def self.find_by_founder(founder_name)
        self.all.find{|startup| startup.founder==founder_name}
    end    

    su1 = Startup.new("ig", "zuck", "ig.com")
    su2 = Startup.new("link", "Theaj", "linkup.com")
    su3 = Startup.new("amazon", "Bezons", "amazon.com")
    
    binding.pry
end