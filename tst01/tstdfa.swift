var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "pan"]

func fridgeContains(_ food:String)->Bool{
	// fridgeIsOpen = true
	defer{
		fridgeIsOpen = true
		print("defer")
	}

	let r = fridgeContent.contains(food)
	print("general code")
	return r
}
fridgeContains("banana")
print(fridgeIsOpen)
