
ara = [1,2,3,4]

def cyk(ara) 
i = 0 
 s = ara[0] 
 while i < size(ara) 
 ara[i] = ara[i+1] 
 i = i + 1 
 end
 if size(ara) > 1 then ara[size(ara)-1] = s 
 end
 return ara
 print ara
end 

