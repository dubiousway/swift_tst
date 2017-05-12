enum ServerResponse {
	case Result(String, String)
	case Failure(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Failure("Out of cheese.")
switch success {
	case .Result("7:00 am", "8:09 pm"):
		print("match it")
	// case let .Result(sunrise, sunset):
		// let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
		// print(serverResponse)
	case let .Failure(message):
		print("Failure... \(message)")
	default:
			print("default")
}
