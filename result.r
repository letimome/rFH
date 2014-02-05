


kdensity<-function(sample,method,n=200,b=length(sample)^0.2){
	m=min(sample)-2*b
	M=max(sample) 2*b
	x.v=seq(from=m,to=M,by=(M-m)/n)

	kernel=switch(method,
	gauss=gaussian.kernel,
	triangular=triangular.kernel)

	dens.v=sapply(x.v,FUN=kernel,sample=sample,b=b)/(length(sample)*b)

	list(x=x.v,y=dens.v)
}




triangular.kernel=function(x,sample,b){
	s<-sample[abs(sample-x)<=b]
	k<-0
	if
(length(s)>0){
		k<-sum(1-abs(u))


		u<-(x-s)/b
	}
	k
	}



gaussian.kernel=function(x,sample,b){
	u<-(x-sample)/b
	sum((1/sqrt(2*3.14159))*exp(-0.5*u^2))
}
null