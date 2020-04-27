require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
propercorn = Startup.new("Propercorn", "Cass", "F&B")
jimmys = Startup.new("Jimmys Iced Coffee", "Jim", "F&B")
flux = Startup.new("Flux", "Matty", "FinTech")
bulb = Startup.new("Bulb", "John", "Energy")

vc1 = VentureCapitalist.new("JamJar", 2000000000)
vc2 = VentureCapitalist.new("BigBucks", 50000000)
vc3 = VentureCapitalist.new("Charlie's Angels", 10000)

fr1 = FundingRound.new(propercorn, vc1, "seed", 50000)
fr2 = FundingRound.new(jimmys, vc3, "angel", 1000)
fr3 = FundingRound.new(flux, vc2, "series B", 500000)
fr4 = FundingRound.new(bulb, vc2, "serties A", 25000)
fr5 = FundingRound.new(bulb, vc3, "serties B", 40000)
fr5 = FundingRound.new(jimmys, vc1, "serties B", 40000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line