const fs = require('fs')

fs.readFile('./input.txt', 'utf8', (err, data) => {
	var total_valid = 0;
	for (entry of data.split('\n').slice(0, -1)) {
		let comp = entry.split(' '); // components of entry
		let range = comp[0].split('-'); // indices of where letter should and should not be
		let letter = comp[1][0];
		let str = comp[2];
		console.log(letter + ": " + str[range[0] - 1] + ", " + str[range[1] -1])
		total_valid += ((str[range[0] - 1] == letter) != (str[range[1] - 1] == letter));
		console.log(total_valid)
	}
	console.log(total_valid);
})

