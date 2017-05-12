var fridgeOpen = false
let fridgeFoods = ["a1","a2","f1","f2"]
func oprFridge(_ food:String)->Bool{
	fridgeOpen = true
	defer{
		fridgeOpen = false
	}
	if fridgeFoods.contains(food) {
		return true
	}
	else{
		return false
	}
}

let hasF1 = oprFridge("f1")
