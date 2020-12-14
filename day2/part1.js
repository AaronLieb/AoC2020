const fs = require('fs')

fs.readFile('./input.txt', 'utf8' , (err, data) => {
	var total_valid = 0;
	for (entry of data.split('\n').slice(0, -1)) {
		let comp = entry.split(' '); // components of entry
		let range = comp[0].split('-'); // min and max count of letter
		let count = comp[2].split(comp[1][0]).length - 1;
		total_valid += (count >= range[0] && count <= range[1]);
	}
	console.log(total_valid);
})

