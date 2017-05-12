protocol Prot1{
	var descStr:String{get}
	mutating func adjust()
}

class ClsPro1:Prot1{
	var descStr:String = "class imp protocol 1"
	var prop2:Int = 99
	func adjust(){
		descStr+="\tadded desc"
	}
}


var a = ClsPro1()
print(a.descStr)
a.adjust()
print(a.descStr)

struct StcPro1:Prot1{
	var descStr:String = "struct imp protocol 1"
	var prop2:Int = 99
	mutating func adjust(){
		descStr+="\tadjusted"
	}
}

var s = StcPro1()
print(s.descStr)
s.adjust()
print(s.descStr)


enum EnumPro1:Prot1{
	case A,B,C
	var descStr:String{
		get{
			switch self{
			case .A:
				return "A"
			case .B:
				return "B"
			case .C:
				return "C"
			}
		}
	}
	mutating func adjust(){
		self = .A
	}
}

var e = EnumPro1.B
print(e.descStr)
e.adjust()
print(e.descStr)

