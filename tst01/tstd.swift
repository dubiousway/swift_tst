import Glibc

class Shape{
	var numSides=0
	var name:String
	init(name:String){
		self.name=name
	}
	func desc()->String{
		return "A shape of \(name) has \(numSides) sides"
	}
}

class Square:Shape{
	var sideLen:Double
	init(len:Double, name:String){
		sideLen = len
		super.init(name:name)
		numSides = 4
	}
	func perimeter()->Double{
		return sideLen * Double(numSides)
	}
	override func desc()->String{
		return "A square of \(name) is \(perimeter()) round"
	}
}

class Circle:Shape{
	var radius:Double
	init(r:Double, name:String){
		radius = r
		super.init(name:name)
	}
	func perimeter()->Double{
		return 2 * M_PI * radius
	}
	override func desc()->String{
		return "A circle of \(name) is \(perimeter()) round"
	}
}

class EquiTriangle:Shape{
	var sideLen:Double
	init(len:Double, name:String){
		sideLen = len
		super.init(name:name)
		numSides = 3
	}
	var perimeter:Double{
		get{
			return Double(numSides) * sideLen
		}
		set{
			sideLen = newValue / Double(numSides)
		}
	}
	override func desc()->String{
		return "A equilateral of \(name) is \(perimeter) round"
	}
}

var s=Shape(name:"wuxing")
print(s.desc())

var sq=Square(len:9, name:"zhengfangxing")
print(sq.desc())

var c:Circle?=Circle(r:2.5, name:"yuan")
print(c!.desc())
let c2=c?.numSides
print(c2!)
print(type(of:c2))

var et=EquiTriangle(len:0.3, name:"dengbiansanjiao")
print(et.desc())
et.perimeter = 0.3
print(et.sideLen)

