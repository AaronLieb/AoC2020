import Foundation

let file = FileManager.default.currentDirectoryPath.appendingPathComponent("input.txt")
let text = try! NSString(contentsOfFile: file, encoding: String.Encoding.ascii.rawValue)
var rows = text.components(separatedBy: "\n")
rows.removeLast()

func c(_ dx: Int,_ dy: Int) -> Int {
	var x = 0, y = 0, count = 0;
	while (y < rows.count) {
		let row = rows[y]
		count += (row[row.index(row.startIndex, offsetBy: x % row.count)] == "#") ? 1 : 0
		x += dx
		y += dy
	}
	return count	
}

let result = c(1, 1) * c(3, 1) * c(5, 1) * c(7, 1) * c(1, 2) 
print(result)
