enum Rank: Int{
	case Ace = 1
	case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
	case Jack, Queen, King
	func desc()->String{
		switch self{
			case .Ace:
				return "ace"
			case .Jack:
				return "jack"
			case .Queen:
				return "queen"
			case .King:
				return "king"
			default:
				return String(self.rawValue)
		}
	}
	func comp(rk:Rank)->Int{
		if self.rawValue > rk.rawValue{
			return 1
		}
		else if self.rawValue < rk.rawValue{
			return -1
		}
		else{
			return 0
		}
	}
}

enum Suit{
	case Spades, Hearts, Clubs, Diamonds
	func desc()->String{
		switch self{
		case .Spades:
			return "Spades"
		case .Hearts:
			return "Hearts"
		case .Clubs:
			return "Clubs"
		case .Diamonds:
			return "Diamonds"
		}
	}
}

struct Card{
	var rank:Rank
	var suit:Suit
	func desc()->String{
		return "The \(rank.desc()) of \(suit.desc())"
	}
	func aDeckCards()->[Card]{
		var deck = [Card]()
		let ss:[Suit] = [.Spades, .Hearts, .Clubs, .Diamonds]
		for s in ss {
			for i in 1...13{
				deck.append(Card(rank:Rank(rawValue:i)!, suit:s))
			}
		}
		return deck
	}
}

let card = Card(rank:.Ace, suit:.Spades)
let cds = card.aDeckCards()
for cd in cds{
	print(cd.desc())
}
