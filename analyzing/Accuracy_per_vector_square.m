%This script is used to measure the accuracy of currents measured using the Copter Currents program:
filename = 'fishcove_0320_1640.xlsx'
T = readcell(filename, 'Sheet', '3')


for n = 11:39 
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

y1 = sqrt((abs(cell2mat((T((n+10),1)))))^2 + (abs(cell2mat((T((n+10),2)))))^2)
y2 = sqrt((abs(cell2mat((T((n+1),1)))))^2 + (abs(cell2mat((T((n+1),2)))))^2)
y3 = sqrt((abs(cell2mat((T((n-10),1)))))^2 + (abs(cell2mat((T((n-10),2)))))^2)
y4 = sqrt((abs(cell2mat((T((n-1),1)))))^2 + (abs(cell2mat((T((n-1),2)))))^2)
 
delta_y = ((y1-y)+(y2-y)+(y3-y)+(y4-y))/4

%Creating a table with the data
A{n} = delta_y
end

for n = 2:9 
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

y1 = sqrt((abs(cell2mat((T((n+10),1)))))^2 + (abs(cell2mat((T((n+10),2)))))^2)
y2 = sqrt((abs(cell2mat((T((n+1),1)))))^2 + (abs(cell2mat((T((n+1),2)))))^2)
%y3 = abs(cell2mat((T((n-10),1))))
y4 = sqrt((abs(cell2mat((T((n-1),1)))))^2 + (abs(cell2mat((T((n-1),2)))))^2)
 
delta_y = ((y1-y)+(y2-y)+(y4-y))/3

%Creating a table with the data
A{n} = delta_y
end

for n = 1 
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

y1 = sqrt((abs(cell2mat((T((n+10),1)))))^2 + (abs(cell2mat((T((n+10),2)))))^2)
y2 = sqrt((abs(cell2mat((T((n+1),1)))))^2 + (abs(cell2mat((T((n+1),2)))))^2)
%y3 = abs(cell2mat((T((n-10),1))))
%y4 = abs(cell2mat((T((n-1),1))))
 
delta_y = ((y1-y)+(y2-y))/2

%Creating a table with the data
A{n} = delta_y
end

for n = 10 
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

y1 = sqrt((abs(cell2mat((T((n+10),1)))))^2 + (abs(cell2mat((T((n+10),2)))))^2)
%y2 = abs(cell2mat((T((n+1),1))))
%y3 = abs(cell2mat((T((n-10),1))))
y4 = sqrt((abs(cell2mat((T((n-1),1)))))^2 + (abs(cell2mat((T((n-1),2)))))^2)
 
delta_y = ((y1-y)+(y4-y))/2

%Creating a table with the data
A{n} = delta_y
end

for n = 41:49 
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)
%y1 = abs(cell2mat((T((n+10),1))))
y2 = sqrt((abs(cell2mat((T((n+1),1)))))^2 + (abs(cell2mat((T((n+1),2)))))^2)
y3 = sqrt((abs(cell2mat((T((n-10),1)))))^2 + (abs(cell2mat((T((n-10),2)))))^2)
y4 = sqrt((abs(cell2mat((T((n-1),1)))))^2 + (abs(cell2mat((T((n-1),2)))))^2)
 
delta_y = (+(y2-y)+(y3-y)+(y4-y))/3

%Creating a table with the data
A{n} = delta_y
end

for n = 40
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

%y1 = abs(cell2mat((T((n+10),1))))
y2 = sqrt((abs(cell2mat((T((n+1),1)))))^2 + (abs(cell2mat((T((n+1),2)))))^2)
y3 = sqrt((abs(cell2mat((T((n-10),1)))))^2 + (abs(cell2mat((T((n-10),2)))))^2)
%y4 = abs(cell2mat((T((n-1),1))))
 
delta_y = ((y2-y)+(y3-y))/2

%Creating a table with the data
A{n} = delta_y
end

for n = 50
    
%y = T(n,1)

y = sqrt((abs(cell2mat((T(n,1)))))^2 + (abs(cell2mat((T(n,2)))))^2)

%y1 = abs(cell2mat((T((n+10),1))))
%y2 = abs(cell2mat((T((n+1),1))))
y3 = sqrt((abs(cell2mat((T((n-10),1)))))^2 + (abs(cell2mat((T((n-10),2)))))^2)
y4 = sqrt((abs(cell2mat((T((n-1),1)))))^2 + (abs(cell2mat((T((n-1),2)))))^2)

delta_y = ((y3-y)+(y4-y))/2

%Creating a table with the data
A{n} = delta_y
end



B = reshape(A,10,5)
C = B.'
D = flip(C,1)