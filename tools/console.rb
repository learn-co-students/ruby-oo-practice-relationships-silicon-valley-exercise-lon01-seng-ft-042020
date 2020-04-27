require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# su1 = Startup.new("ig", "zuck", "ig.com")
# su2 = Startup.new("whatsapp", "mk", "wa.com")
# su3 = Startup.new("face", "mark", "fb.com")
# su4 = Startup.new("link", "Theaj", "linkup.com")
# su5 = Startup.new("amazon", "Bezons", "amazon.com")

# #ruby tools/console.rb
#vc1 = VentureCapitalist.new("goldmans", 67)
# vc2 = VentureCapitalist.new("hsbc", 100043780345)
# vc3 = VentureCapitalist.new("barclays", 1046090345)
# vc4 = VentureCapitalist.new("santander", 7000)
# vc5 = VentureCapitalist.new("trust", 1000000345)


# fr1 = FundingRound.new(su1, vc1, "Angel", 50)
# fr2 = FundingRound.new(su2, vc5, "Pre-Seed", 6524)
# fr3 = FundingRound.new(su4, vc3, "Seed", 65)
# fr4 = FundingRound.new(su5, vc2, "Series A", 65364)
# fr5 = FundingRound.new(su1, vc4, "Series B", 89584)
# fr6 = FundingRound.new(su3, vc5, "Series C", 454543)
#binding.pry
0 #leave this here to ensure binding.pry isn't the last line