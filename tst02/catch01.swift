func fina(n:Int)->Int{
	if n <= 2 {
		return n
	}
	else{
		return n*fina(n:n-1)
	}
}

var x:Int
do{
	x = fina(n:4)
}
catch{
	print(error)
}
print(x)
