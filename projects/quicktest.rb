ab = [1,2,3,4]
cd = [5,6,7,8]
ef = [9,10,11,12]
g = []

g << ab
g << cd
g << ef

print g 
puts g[0][1]

g.neighboor do |i,j|
g[i][j] + g[i+1][j-1]
end


#def count
#g.each do |i|
#i.each do |j|

#$v= g[i][j] + g[i-1][j+1]

#end
#end
#end


