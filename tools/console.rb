require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#ruby tools/console.rb
su1 = Startup.new("ig", "zuck", "ig.com")
su2 = Startup.new("link", "Theaj", "linkup.com")
su3 = Startup.new("amazon", "Bezons", "amazon.com")

binding.pry

vc1 = VentureCapitalist.new("goldmans", 67)
vc2 = VentureCapitalist.new("santander", 7000)
vc3 = VentureCapitalist.new("trust", 1000000345)

#  fr1 = su1.sign_contract(vc1, "Seed", 10000)
#  fr3 = su1.sign_contract(vc3, "Seed", 65)
#  fr4 = su1.sign_contract(vc2, "Series A", 65364)
#  fr5 = su1.sign_contract(vc1, "Series B", 89584)

#  fr2 = su2.sign_contract(vc3, "Pre-Seed", 6524)
#  fr6 = su3.sign_contract(vc1, "Series C", 454543)

#  vc3.offer_contract(su3, "series A", 2000)
#  vc3.offer_contract(su2, "series A", 7000)
#  vc3.offer_contract(su3, "series A", 3972900)
# 0 #leave this here to ensure binding.pry isn't the last line