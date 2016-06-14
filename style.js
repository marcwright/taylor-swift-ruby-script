var beat = (60/95.0) * 1000
var sleep = require('sleep');

var counter = 0;

function intro(beat){
	console.log('Bm');
	console.log("G");
}

function measure(){
	console.log("measure #" + counter);
	counter += 1;
}

setInterval(measure, beat);
intro();
sleep.sleep(intro())

// function foo() {
//     console.log("Hi there");
// }

// setTimeout(foo, 3000);

// var timer = setInterval(foo, 2000);
// // Somewhere else, stop it:
// clearInterval(timer);

// intro(beat);


// def intro(beat)
// 		puts "Bm"
// 		sleep beat * 8
// 		puts "G"
//  	 	sleep beat * 8
// 	end



// def verse1a(beat)
// 	puts "Bm --- 'Midnight'"
// 	# puts "Midnight"
// 	sleep beat * 5
// 	puts "'you come and pick me up, no'"
// 	sleep beat * 3
	
// 	puts "G --- 'headlights'"
// 	# puts "headlights"
// 	sleep beat * 8

// 	puts "Bm --- 'Long drive'"
// 	sleep beat * 5
// 	puts "'could end in burning flames or'"
// 	sleep beat * 3

// 	puts "G --- 'paradise'"
// 	sleep beat * 8
	
// end


// intro(beat)
// intro(beat)
// verse1a(beat)