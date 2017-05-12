class A{
	var x=0
	var s:String
	init(_ ns:String){
		s=ns
	}
	func prt(){
		print(x,s)
	}
}

class B:A{
	var y=1
	var s2:String
	init(s1:String, s2:String){
		self.s2=s2
		super.init(s1)
	}
	override func prt(){
		print(y,s2)
	}
}

var a = A("asdjfaskdfjsadfj")
a.prt()
var b = B(s1:"aaaa", s2:"bbbbbb")
b.prt()
