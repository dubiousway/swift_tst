protocol Prot1{
	var descStr:String{get}
	mutating func adjust()
}

extension Int:Prot1{
	var descStr:String{
		return "I am \(self)"
	}
	mutating func adjust(){
		self+=100
	}
}

var x=8
print(x.descStr)
x.adjust()
print(x.descStr)

