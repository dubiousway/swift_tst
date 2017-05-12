enum Rank: Int{
	case Ace
	case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
	case Jack, Queen, King
	func desc()->String{
		switch self{
			case .Ace:
				return "this is Rank: ace"
			case .Jack:
				return "this is Rank: jack"
			case .Queen:
				return "this is Rank: queen"
			case .King:
				return "this is Rank: king"
			default:
				return String(self.rawValue)
		}
	}
//	func comp(rk:Rank)->Int{
//		if self.rawValue > rk.rawValue{
//			return 1
//		}
//		else if self.rawValue < rk.rawValue{
//			return -1
//		}
//		else{
//			return 0
//		}
//	}
}

let ace = Rank.Ace
print(ace)
print(type(of:ace))

let aceRawValue = ace.rawValue
print(aceRawValue)
print(type(of:aceRawValue))

print(ace.desc())

let fv = Rank.Five
print(fv)
print(fv.desc())

