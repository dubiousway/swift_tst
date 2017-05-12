enum PrintErr:Error{
	case OutOfPaper
	case NoToner
	case OnFire
}

func send(job:Int, prt:String) throws->String{
	if prt == "Never"{
		throw PrintErr.NoToner
	}
	return "Job sent"
}

let prtResponse1 = try? send(job:100, prt:"Apple")
let prtResponse2 = try? send(job:100, prt:"Never")

print(type(of:prtResponse2))

print(prtResponse1 ?? "default")
print(prtResponse2 ?? "default" )
