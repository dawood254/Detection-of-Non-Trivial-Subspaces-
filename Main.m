clc
clear
bits = 3;
S = 0:(2^bits)-1;
All_permutations = perms(S);
[x,y]=size(All_permutations);
i = 1;
j = 1;
j1 = 1;
k = 1;
while i < x
    Non = Nonlinearity(All_permutations(i,:));
    if sum(Non)==0
        Average_O(j,:)=All_permutations(i,:);
        j=j+1;
        i=i+1;
    elseif sum(Non)==14
    Average_two(j1,:)=All_permutations(i,:);
         j1 = j1+1;
          i=i+1;
    else 
        Average_Non_O(k,:)=All_permutations(i,:);
        k=k+1;
        i=i+1;
    end
end
X = Average_Non_O; 
[x,y]=size(X);
% while i < x
    Corr = Correlation(X(1,:));
    
