a = [0,1,0]
b = [1,0,1]
c = [0,1,0]
d = [a,b,c]
print d

d.each do |x|
x.each do |y|

y + 1 

#neigh = d[x-1][y-1] + d[x-1][y] + d[x-1][y+1] + d[x][y-1] + d[x][y+1] + d[x+1][y-1] + d[x+1][y] + d[x+1][y+1]

#if neigh < 2
#d[y][y].map! = 2
#elsif neigh > 3
#d[y][y].map! = 3

#end

end

end
print d