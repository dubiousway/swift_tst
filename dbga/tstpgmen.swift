enum ServerResponse {
	case Result(String, String)
	case Failure(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Failure("Out of cheese.")
switch success {
	case .Result("6:01 am", "8:09 pm"):
		print("pi pei le")
	default:
		print("default")
}
