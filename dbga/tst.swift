class A{
	var x=0
	func prt(){
		print(x)
	}
}

class B:A{
	override func prt(){
		print(x+100)
	}
}

var a = A()
a.prt()
var b = B()
b.prt()
// a = B()
// a.prt()
