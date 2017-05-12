func repeatItem<Item>(item:Item, n:Int)->[Item]{
	var items = [Item]()
	for _ in 0..<n{
		items.append(item)
	}
	return items
}

print(repeatItem(item:"xyz",n:9))
