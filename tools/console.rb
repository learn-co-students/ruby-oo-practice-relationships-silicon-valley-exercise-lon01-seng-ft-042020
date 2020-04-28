require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Fab","Gbenga","Ecomm")
s2 = Startup.new("Hey","Henry","Tele")
s3 = Startup.new("Ha","Whi","Health")

s1.pivot("Distro","DistroKings")

v1 = VentureCapitalist.new("Bob",5000)
v2 = VentureCapitalist.new("Fran",6000000000)
v3 = VentureCapitalist.new("Bex",1000000000)

f1 = FundingRound.new(s1,v2,"Series A", 50)
f2 = FundingRound.new(s2,v3,"angel",-1)
f3 = FundingRound.new(s2,v3,"for real",500000)

s2.sign_contract(v2,"something",400000)
s3.sign_contract(v1,"Permanent", 25)


v1.offer_contract(s3,"Again", 25)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line