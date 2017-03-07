###1###
> default=c(1,5,-2,1,2,-1,3,6,-3)
> g=matrix(default,nrow=3,ncol=3)
> g=g^3

> a=sum(default[3:9])
> default[7:9]=a
> matrix(default,nrow=3)

###2###
> first=rep(10,15)
> second=rep(-10,15)
> c=c(first,second,first)
> B=matrix(c,nrow=15,ncol=3)
> Bt=t(B)
> Bt%*%B #а, глаза болят

###3###
> c=rep(0,36)
> E=matrix(c,nrow=6)
> G=row(E)
> K=col(E)
> for (i in 1:36)
+ {if (abs(K[i]-G[i])==1)  {E[i]=1}}
> E

> c=rep(0,36)
> E=matrix(c,nrow=6)
> G=(row(E))
> K=(col(E))
> for (i in 1:36)
+ {if (abs(K[i]-G[i])==2)  {E[i]=1}
+   if (G[i]-K[i]==0)  {E[i]=1}}
> E

> c=rep(0,36);
> E=matrix(c,nrow=6);
> G=rev(row(E));
> K=(col(E))
> for (i in 1:36)
+ {if (abs(K[i]-G[i])==2)  {E[i]=1};
+  if (G[i]-K[i]==0)  {E[i]=1}}
> E

###4###
> x=1:5
> y=-1:3
> outer(x,y,"+")

> x=0:4
> y=1:5
> outer(x,y,"^")

###5###
 
> L=matrix(0,5,5) 
> for(i in 2:6) L[row(L)+col(L)==i | row(L)+col(L)==i+5]=i-2 
 
> P=matrix(0,10,10) 
> for(i in 2:11) P[row(P)+col(P)==i | row(P)+col(P)==i+10]=i-2 

> K=matrix(0,9,9) 
> for(i in 0:8) K[row(K)==col(K)+i]=K[row(K)+9-i==col(K)]=i

###6###

> aa=matrix(1,5,5) 
> for (i in 1:4){ aa[row(aa)==col(aa)+i]=aa[row(aa)+i==col(aa)]=i+1}
> b=c(7,-1,-3,5,17)
> g=matrix(aa,nrow=5,ncol=5);
> solve(g,b);

###7###
> set.seed(75)
> M=matrix(sample(1:10,60,T),6,10)

> x=strokSums(M[i,]>4)

> x=strokSums(M[i,]==7)
> which(x==2)

###8###
> x=0;
>for (i in 1:20){
+   for (j in 1:5){
+     x=x+((i^4)/(3+j))}}


> x=0;for (i in 1:20){
> for (j in 1:5){
+   x=x+((i^4)/(3+i*j))}}
