var s = "你好啊。こんにちは。"	// 10 Chars

print("---- characters ----")
let ctc = s.characters.count
print(ctc)

print("---- utf8 ----")
let ctu8 = s.utf8.count
print(ctu8)

print("---- utf16 ----")
let ctu16 = s.utf16.count
print(ctu16)

print("---- unicodeScalars----")
let ctus = s.unicodeScalars.count
print(ctus)


