import Foundation

let file = "file.txt" //this is the file. we will write to and read from it

let text = "some text" //just a text

if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

    let path = dir.appendingPathComponent(file)

    //writing
    do {
        try text.write(to: path, atomically: false, encoding: String.Encoding.utf8)
    }
    catch {/* error handling here */}

    //reading
    do {
        let text2 = try String(contentsOf: path, encoding: String.Encoding.utf8)
    }
    catch {/* error handling here */}
}
