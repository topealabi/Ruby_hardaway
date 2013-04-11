
class GameOfLife

@@matrx= []
@@ary= []

def evolve
5.times {@@ary.push(rand(2)) 
@@matrx << @@ary }
print @@matrx

i = @@matrx.each 
j= i.each
neighboor = @@matrx[i-1][j-1] + @@matrx[i-1][j] + @@matrx[i-1][j+1] + @@matrx[i][j-1] + @@matrx[i][j+1] + @@matrx[i+1][j-1] + @@matrx[i+1][j] + @@matrx[i+1][j+1]



end

end

g= GameOfLife.new
g.evolve

#for @@matrx[i][j] neighboor = sum matrix[i-1][j-1] + matirx[i-1][j] +  