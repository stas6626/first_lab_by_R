#1
M=function (n) {y=n*(n+1)/2+1; return(y)} 
M(0:10)

#2
T=function (n) (3*n*n+3*n+2)/2
T(0:10)

#3
U=function (n,k) {d=k*n*(n-1)/2+1; return(d)}
U(1:10,3)

#4
k=1
zz = function(n) {Z=matrix(0,n,n);
for(i in 1:n){Z[i,1:i] = k:(k+i-1);k=i+k};return(Z)}
zz(5)

#5
A=matrix(c(1,4,5,3,6,2,3,4,6),3,3)
y=A
E=diag(1,3,3)
F=function (n) {if (n>1) {for (i in 2:n) {y=y%*%A}};
if (n<0) {for (i in n:0) {y=E%*%(1/A)}};
if (n==0) {y=E}; if (n==-1) {y=E/A};
if (n==1) {y=A};return(y)
}

F(-1)
F(0)
F(1)
F(2)
F(3)

#6
n = 5
T = function(n) (factorial(n)/(factorial(0:n)*factorial(n-0:n)))
for(i in 0:n) print(T(i))

#7
n=5
require(Matrix)
A=matrix(0,nrow=n,ncol=n)
A[col(A)==row(A)-1]=1:(n-1)
B=expm(A);B

#8
FF=zz(5)
image(t(FF))
