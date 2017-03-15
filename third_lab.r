#1
split.screen(c(1,2))
x=c(-2,-1,0,1,2)
y=x^3-3*x
screen(1)
plot(x,y,type="l")
screen(2)
plot(y~x,type="l")

#2
par(mfrow=c(3,3))
plot(sin,0,2*pi,type="p")
plot(sin,0,2*pi,type="l")
plot(sin,0,2*pi,type="b")
plot(sin,0,2*pi,type="c")
plot(sin,0,2*pi,type="o")
plot(sin,0,2*pi,type="h")
plot(sin,0,2*pi,type="s")
plot(sin,0,2*pi,type="S")
plot(sin,0,2*pi,type="n")

#3
par(mfrow=c(4,2))
plot(sin,0,2*pi,type="l",lty=0)
plot(sin,0,2*pi,type="l",lty=1)
plot(sin,0,2*pi,type="l",lty=2)
plot(sin,0,2*pi,type="l",lty=3)
plot(sin,0,2*pi,type="l",lty=4)
plot(sin,0,2*pi,type="l",lty=5)
plot(sin,0,2*pi,type="l",lty=6)

#4
split.screen(c(3,2))
screen(1)
par(bg = "white")
screen(1)
plot(sin,0,2*pi,type="l",lty=1)
screen(2)
par(bg = "white")
screen(2)
plot(sin,0,2*pi,type="l",lty=2)
screen(3)
par(bg = "blue")
screen(3)
plot(sin,0,2*pi,type="l",lty=3)
screen(4)
par(bg = "blue")
screen(4)
plot(sin,0,2*pi,type="l",lty=4)
screen(5)
par(bg = "red")
screen(5)
plot(sin,0,2*pi,type="l",lty=5)
screen(6)
par(bg = "red")
screen(6)
plot(sin,0,2*pi,type="l",lty=6)

#5
par(bg = "#735184")
y <- function(x) pi*x^2*log10(x)
curve(y, 0, 10,fg="green",col="red",mgp=c(2.8,1.5,1))


#6
split.screen(c(2,2))
x=c(-2,-1,0,1,2)
y=x^3-3*x
screen(1)
plot(x,y,type="p")
screen(2)
plot(x,y,type="l")
screen(3)
plot(x,y,type="l",lty=4)
screen(4)
YY <- function(x) x^3-3*x
curve(YY, -2, 2)

#7
x=seq(1,6,by=0.1)
y1=pi*x
y2=exp(x)*cos(x)
	#a)
x=seq(1,6,by=0.1)
y1=pi*x
y2=exp(x)*cos(x)
par(mfrow=c(1,2))
plot(x,y1,col="black",type="l")
legend("bottom",expression(pi*x))
grid()
plot(x,y2,col="white",type="l")
legend("topleft",expression(exp(x)*cos(x)))
grid()

#Дабы внести изменения в график, на  нужно перестраивать оба графика, что долго, хоть и не критично, но мы ж хотим эфектиииивано

 
	#b)
split.screen(c(1,1))
x=seq(1,6,by=0.1)
y1=pi*x
y2=exp(x)*cos(x)
screen(1)
plot(x,y2, type="l",xlab="x", ylab="y",col="yellow")
grid()
abline(a=0, b=pi,col="white")
grid()
legend("topleft",expression(y1=pi*x,y2=exp(x)*cos(x)))
legend(x=locator(1,type="p"),legend=expression(y1=pi*x,y2=exp(x)*cos(x)))
locator(n=1,type = "p")
legend(x=locator(1,type="p"),legend=expression("Точка пересечения"))
		
	#c)
x=seq(3,6,by=0.1)
y1=pi*x
y2=exp(x)*cos(x)
require(ggplot2)
df <- data.frame(x,y1,y2)                  
ggplot(df, aes(x)) +                   
geom_line(aes(y=y1), colour="green")+  
geom_line(aes(y=y2),colour="red")+
ylab("Y(X)") + xlab("X")
