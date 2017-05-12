enum PrintErr:Error{
	case OutOfPaper
	case NoToner
	case OnFire
}

func send(job:Int, prt:String) throws->String{
	print("job first line")
	defer{
		print("in defer")
	}
	if prt == "Never Has Toner"{
		throw PrintErr.NoToner
	}
	return "Job sent"
}

do{
	let prtResponse = try send(job:100, prt:"Never Has Toner")
	print(prtResponse)
}
catch let err as PrintErr{
	print(err)
}
