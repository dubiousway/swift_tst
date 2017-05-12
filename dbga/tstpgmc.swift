class Shape{
    var name:String
    var numsides=0
    init(name:String){
        self.name = name
    }
    func desc()->String{
        return "This is a shape, named \(name)"
    }
}

class Square:Shape{
    var sidelen:Double
    init(len:Double, name:String){
        sidelen = len
        super.init(name:name)
		numsides = 4
    }
    func perimeter()->Double{
        return sidelen * Double(numsides)
    }
    override func desc()->String{
        return "This is a square, named \(name), with \(perimeter()) round"
    }
}

class EquiTriangle:Shape{
    var sidelen = 0.0
    init(len:Double, name:String){
        sidelen = len
        super.init(name:name)
		numsides = 3
    }
	var perimeter:Double{
		get{
			return Double(numsides) * sidelen
		}
		set{
			sidelen = newValue / Double(numsides)
		}
	}
    override func desc()->String{
        return "This is a equilateraltriangle, named \(name), with \(perimeter) round"
    }
}
var s = Shape(name:"shape")
print(s.desc()) 
var sq = Square(len:4.0, name:"square")
print(sq.desc()) 

var et = EquiTriangle(len:3.0, name:"equilateraltriangle")
et.perimeter = 33.0
print(et.desc()) 
et.perimeter = 99.9
print(et.sidelen) 
