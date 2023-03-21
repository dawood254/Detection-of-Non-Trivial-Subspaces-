clc
clear
bits = 3;
S = 0:(2^bits)-1;
All_permutations = perms(S);
[x,y]=size(All_permutations);
i = 1;j = 1;j1 = 1;k = 1;
while i < x+1
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
[x,y]=size(Average_Non_O);
i =1;
k=1;k1=1;k2=1;k3=1;k4=1;k5=1;k6=1;k7=1;t=1;
while i<x+1
    Corr_Table = abs(Correlation(X(i,:)))';
    Z1 =  sum(Corr_Table);
    if max(Z1)==56
        Non_Trivial(k,:)=X(i,:);
        if find(Z1==56)==1
            Zero_One(k1,:)=X(i,:);
                k1=k1+1;
        elseif find(Z1==56)==2
            Zero_two(k2,:)=X(i,:);
                k2=k2+1;
        elseif find(Z1==56)==3
            Zero_Three(k3,:)=X(i,:);
                k3=k3+1;
        elseif find(Z1==56)==4
            Zero_Four(k4,:)=X(i,:);
                k4=k4+1;
        elseif find(Z1==56)==5
            Zero_Five(k5,:)=X(i,:);
                k5=k5+1;                
         elseif find(Z1==56)==6
            Zero_Six(k6,:)=X(i,:);
                k6=k6+1;   
         elseif find(Z1==56)==7
            Zero_Seven(k7,:)=X(i,:);
                k7=k7+1;   
        end
        i=i+1;
        k=k+1;
    else
        Trivial(t,:)=X(i,:);
        i=i+1;t=t+1;
    end
    

end

