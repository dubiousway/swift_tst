class Test1{
	let x1 = 100
	private let x2 = 200
	func disp(){
		print(x1)
		print(x2)
	}
}

fileprivate class Test2{
	let x1 = 100
	private let x2 = 200
	func disp(){
		print(x1)
		print(x2)
	}
}

func tstfunc()->(c1:Test1,c2:Test2){
	let t1 = Test1()
	let t2 = Test2()
	t2.disp()
	return (t1,t2)
}
