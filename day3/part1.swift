import Foundation

let file = FileManager.default.currentDirectoryPath.appendingPathComponent("input.txt")
let text = try! NSString(contentsOfFile: file, encoding: String.Encoding.ascii.rawValue)
var rows = text.components(separatedBy: "\n")
rows.removeLast()

var x = 0, count = 0
for row in rows {
	count += (row[row.index(row.startIndex, offsetBy: x % row.count)] == "#") ? 1 : 0
	x += 3
}

print(count)

