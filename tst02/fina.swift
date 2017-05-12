func fina(n:Int)->Int{
	if n <= 2 {
		return n
	}
	else{
		return n*fina(n:n-1)
	}
}

let x = fina(n:4)

print(x)
