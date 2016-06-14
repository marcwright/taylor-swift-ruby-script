BEAT = 60/95.5
$measure = 1
$chords = ["Bm", "G", "Em", "D", "D/F#"]
$beat_string = "-- "	
	

verse_1_lyrics = [
	["MIDNIGHT", 			"", 		"",			"",									"",								"YOU COME AND", "PICK ME UP", 		"NO"	],
	["HEADLIGHTS",		"", 		"",			"", 								"", 							"", 						"", 							""		],
	["LONG DRIVE",		"", 		"",			"",									"", 							"COULD END IN",	"BURNING FLAMES", "OR"	], 
	["PARADISE",			"", 		"",			"", 								"", 							"", 						"", 							"FADE"],
	["IN THE VIEW",		"",			"OH",		"",									"IT'S BEEN A WHILE","SINCE",	"I HAVE",					"EVEN"],
	["HEARD FROM YOU","", 		"",			"",									"HEARD FROM YOU",	"",							"",								""		],
	["",		"I SHOULD",		"JUST TELL YOU TO", "LEAVE CAUSE I", 	"",		"KNOW EX", "ACTLY WHERE IT", "LEADS BUT I"],
	["",		"WATCH US GO",		"ROUND AND",	"ROUND EACH TIME", "",	"", "",	 "YOU GOT THAT"]
]

chorus_lyrics = [
	["JAMES",	"DEEN", "DAY", 		"DREAM", 				"LOOK IN",	 	"YOUR EYE", 	"",		"AND I GOT THAT"		],
	["RED",		"LIP",	"CLASSIC","",							"THING THAT",	"YOU",		"LIKE",		"AND WHEN WE GO"		],
	["CRASH",	"ING", 	"DOWN",	  "WE COME",			"BACK EV"			"ERY",		"TIME",		"CAUSE WE NEVER GO"	],
	["OUT",		"OF",		"STYLE",	"WE NEVER GO",	"OUT",				"OF",			"STYLE",	"YOU GOT THE"				],
	["LONG",	"HAIR",	"SLICKED","BACK", 				"WHITE T",		"",				"SHIRT",	"AND I GOT THAT"		],
	["GOOD",	"GIRL", "FAITH",	"AND A", 				"TIGHT",		 	"LITTLE",	"SKIRT",	"AND WHEN WE GO"		],
	["CRASH",	"ING",  "DOWN",		"WE COME", 			"BACK EVERY",		"",		"TIME",		"CAUSE WE NEVER GO"	],
	["OUT",		"OF",		"STYLE",	"WE NEVER GO",	"OUT OF",				"STYLE",			"",	""									]
]

verse_2_lyrics = [
	["SO IT GOES", 		"", 		"",			"",			"",							"HE CAN'T", 	"KEEP HIS", 	"WILD EYES"		],
	["ON THE ROAD",		"", 		"",			"", 		"HMMM",					"", 					"", 					""						],
	["TAKES ME HOME",	"", 		"",			"",			"", 						"LIGHTS ARE",	"OFF HE'S", 	"TAKING"			], 
	["OFF HIS",				"COAT",	"",			"", 		"OOHH", 				"YEAH",				"",						"I SAID"			],
	["I HEARD",				"",			"OH",		"THAT",	"YOU BEEN OUT",	"AND ABOUT",  "WITH",				"SOME"				],
	["OTHER GIRL",		"", 		"",			"",			"SOME OTHER",		"GIRL",				"",						""						],
	["",		"HE SAYS", "WHAT YOU'VE HEARD IS","TRUE BUT I",		"", "CAN'T STOP", "THINKING ABOUT","YOU AND I"],
	["",		"I SAID I'VE",		"BEEN THERE",		"TOO A FEW", 		"TIMES",	  "",		"CAUSE",		"YOU GOT THAT"]
]

outro_lyrics = [
	["", 		"", 		"",			"",			"",			"", 					"JUST", 				"TAKE ME UP"],
	["",		"", 		"",			"", 		"",			"YEAH",				"JUST", 				"TAKE ME UP"],
	["",		"",			"",			"", 		"",			"", 					"",							""					],
	["",		"",			"",			"", 		"OUT",	"OF STYLE", 	"YOU GOT THAT",	""					]
]

def beat_string

		puts "#{$beat_string}"
		$beat_string += "-- "
 		$measure += 1
		sleep BEAT

end

def intro
	16.times do
		# puts $chords[i]
		beat_string
	end
	$beat_string = " --"
end

def verse_chorus(lyrics)
	8.times do |num|
		puts lyrics[num]
		beat_string
	end

	$beat_string = " --"
end

def chorus(lyrics)
	8.times do |num|
		puts lyrics[num]
		beat_string(1)
	end
end


2.times {intro}

8.times do |num|
	verse_chorus(verse_1_lyrics[num])
end

8.times do |num|
	verse_chorus(chorus_lyrics[num])
end

8.times do |num|
	verse_chorus(verse_2_lyrics[num])
end

8.times do |num|
	verse_chorus(chorus_lyrics[num])
end

4.times do |num|
	verse_chorus(outro_lyrics[num])
end

4.times do |num|
	verse_chorus(chorus_lyrics[num])
end
