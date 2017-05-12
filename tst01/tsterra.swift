enum PrintErr:Error{
	case OutOfPaper
	case NoToner
	case OnFire
}

func send(job:Int, prt:String) throws->String{
	if prt == "Never Has Toner"{
		throw PrintErr.NoToner
	}
	return "Job sent"
}

do{
	let prtResponse = try send(job:100, prt:"Never Has Toner")
	print(prtResponse)
}
//catch PrintErr.OutOfPaper{
//	print("Out of paper")
//} catch PrintErr.NoToner{
//	 print("No toner")
//}catch PrintErr.OnFire{
//	print("On fire")
//} catch{
//	print(error)
//}

catch let err as PrintErr{
	print(err)
}
