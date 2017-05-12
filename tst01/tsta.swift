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

var s=Shape(name:"wuxing")
print(s.desc())
