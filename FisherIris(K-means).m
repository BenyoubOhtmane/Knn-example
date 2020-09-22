k=5;
xnew=[5.3333 1.333 2.333 3.2223];
G=load("fisheriris.mat");
X=G.meas;
Y=G.species;

for i=1: length(X)
    %Euclidean distance
    d(i)=sqrt(sum((xnew-X(i,:)).^2));
end

%order d
[dorder indx] = sort(d); %[X Y]= similar to X,Y= 
% indx contains index for each element in d order

knn=dorder(1:k);
knn_indx=indx(1:k);
X(knn_indx,:);
Y(knn_indx);
