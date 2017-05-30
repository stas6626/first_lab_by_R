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

################################2############################
	#1
#a)
n=-1;k=5
xVec=c(n:k);xVec
tmpFn1= function (xVec) {for (i in 1:k) {yVec=xVec[i]^i; print (yVec)}}
tmpFn1(xVec)
tmpFn2= function (xVec) {for (i in 1:k) {yVec=(xVec[i]^i)/i;print (yVec)}}
tmpFn2(xVec)

#b)
c=1
tmpFn3= function (x,n) {for (i in 1:n) 
{
if (n>0){yVec=x^i/i; c=c+yVec}
else {print ("oshibka")}
}
print (c)
}
tmpFn3(1,3)


	#2
n=1;k=6
xVec=c(n:k);xVec
tmpFn4= function (xVec) {for (i in 3:k) {yVec=(xVec[i-2]+xVec[i-1]+xVec[i])/3;print(yVec)}}
tmpFn4(xVec)

	#3
xVec=seq(-3,3,by=0.01)
tmpFn5= function (xVec) {n=length(xVec);y=rep(0,n);
for (i in 1:n) {
if (xVec[i]<0) y[i]=xVec[i]*xVec[i]+2*xVec[i]+3;
if (xVec[i]>=0 && xVec[i]<2) y[i]=xVec[i]+3;
if (xVec[i]>=2) y[i]=xVec[i]*xVec[i]+4*xVec[i]-7};
return(y)}
tmpFn5(xVec)
y=tmpFn5(xVec)
plot(xVec,y,type="l",lty="solid")

	#4
A=matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3);A
tmpFn6= function (A) {for (i in 1:9) {
if (A[i]%%2!=0) {A[i]=A[i]*2}};return (A)}
tmpFn6(A)

	#5
tmpFn7=function(n,k){B=matrix(0,ncol=n,nrow=n);
B[col(B)==row(B)]=k;
B[col(B)==row(B)+1]=1;
B[col(B)==row(B)-1]=1;return(B)}
tmpFn7(5,5)

	#6
tmpFn8= function (alfa) {
alfa = alfa%%360;
if ((alfa>=0)&&(alfa<90)) {print('perviy')};
if ((alfa>=90)&&(alfa<180)) {print('vtoroy')};
if ((alfa>=180)&&(alfa<270)) {print('tretiy')};
if ((alfa>=270)&&(alfa<360)) {print('chetvertiy')}
}
tmpFn8(100)

	#7
x=2:4
y=4:6
z=2015:2017
weekday=function(day,month,year){f=(trunc(2.6*(month-2)-0.2)+day+year%%100+
trunc((year%%100)/4)+trunc((year%/%100+1)/4)-2*(year%/%100+1)+1)%%7+1;return(f)}
weekday(x,y,z)
weekday(1,4,2017)

	#8
#a)
testLoop=function(n){x=rep(1,n-1);x[2]=2;for(i in 3:(n-1)){x[i]=x[i-1]+2/x[i-1]};return(x)}
testLoop(5)

#b)
testLoop2=function(yVec){e=0;n=length(yVec);
for(j in 1:n){e=exp(j)};return(e)}
testLoop2(c(1,2,3))

