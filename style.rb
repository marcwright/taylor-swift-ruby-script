BEAT = 60/95.5
$measure = 1
$chords = ["Bm", "G", "Em", "D", "D/F#"]	
	

verse1a_lyrics = ["MIDNIGHT", "YOU COME AND PICK ME UP, NO", "HEADLIGHTS", "LONG DRIVE", "COULD END IN BURNING FLAMES OR", "PARADISE", "FADE IN THE VIEW, OH!", "IT'S BEEN A WHILE SINCE I HAVE EVEN", "HEARD FROM YOU", "HEARD FROM YOU"]
verse1b_lyrics = ["I SHOULD JUST TELL YOU TO LEAVE CAUSE I", "KNOW EXACTLY WHERE IT LEADS BUT I", "WATCH US GO ROUND AND ROUND EACH TIME", "YOU GOT THAT"]

chorus_lyrics = [
	["JAMES",	"DEEN", "DAY", 		"DREAM", 				"LOOK IN",	 	"YOUR", 	"EYE",		"AND I GOT THAT"],
	["RED",		"LIP",	"CLASS",	"IC",						"THING THAT",	"YOU",		"LIKE",		"AND WHEN WE GO"],
	["CRASH",	"ING", 	"DOWN",	  "WE COME",			"BACK EV"			"ERY",		"TIME",		"CAUSE WE NEVER GO"],
	["OUT",		"OF",		"STYLE",	"WE NEVER GO",	"OUT",				"OF",			"STYLE",	"YOU GOT THE"],
	["LONG",	"HAIR",	"SLICKED","BACK", 				"WHITE",			"T",			"SHIRT",	"AND I GOT THAT"],
	["GOOD",	"GIRL", "FAITH",	"AND A", 				"TIGHT",		 	"LITTLE",	"SKIRT",	"AND WHEN WE GO"],
	["CRASH",	"ING",  "DOWN",		"WE COME", 			"BACK EV",		"ERY",		"TIME",		"CAUSE WE NEVER GO"],
	["OUT",		"OF",		"STYLE",	"WE NEVER GO",	"OUT",				"OF",			"STYLE",	""]
]

verse2a_lyrics = ["SO IT GOES", "HE CAN'T KEEP HIS WILD EYES", "ON THE ROAD HMMM", "TAKES ME HOME", "LIGHTS ARE OFF HE'S TAKING", "OFF HIS COAT OOHH YEAH I SAID", "I HEARD, OH! THAT", "YOU BEEN OUT AND ABOUT WITH SOME", "OTHER GIRL", "SOME OTHER GIRL"]
verse2b_lyrics = ["HE SAYS WHAT YOU'VE HEARD IS TRUE BUT I", "CAN'T HELP THINKING ABOUT YOU AND I", "I SAID I'VE BEEN THERE TOO A FEW TIMES", "YOU GOT THAT"]

def beat_string(num)
	beat_string = "| -- | "
	1.upto(num) do |n|
		# if $measure % 8 == 0 
		# 	beat_string += " ***************"
		# elsif $measure % 2 == 0 
		# 	beat_string += " --"
		# else
		# 	beat_string += " **"
		# end
		puts "#{beat_string}"
		beat_string += "-- |"

		# beat_string += ($measure % 2 == 0 ? " --" : " **")
 		$measure += 1
		sleep BEAT
	end
end

def intro(num)
	2.times do
		puts $chords[0]
		beat_string(num)
		puts $chords[1]
		beat_string(num)
	end
end

def verse_1a(lyrics)
	puts $chords[0]
	puts lyrics[0]
	beat_string(5)
	puts lyrics[1]
	beat_string(3)
	puts $chords[1] 
	puts lyrics[2]
	beat_string(8)
	puts $chords[0]
	puts lyrics[3]
	beat_string(5)
	puts lyrics[4]
	beat_string(3)
	puts $chords[1]
	puts lyrics[5]
	beat_string(8)
	puts lyrics[6]
	beat_string(4)
	puts lyrics[7]
	beat_string(4)
	puts lyrics[8]
	beat_string(4)
	puts lyrics[9]
	beat_string(4)	
end

def verse_1b(lyrics)
	puts $chords[2]
	beat_string(1.5)
	puts lyrics[0]
	beat_string(2.5)
	puts $chords[4]
	beat_string(1.5)
	puts lyrics[1]
	beat_string(2.5)
	puts $chords[1]
	beat_string(2.5) 
	puts lyrics[2]
	beat_string(7)
	puts lyrics[3]
	beat_string(1)
end

def chorus(lyrics)
	# puts $chords[3]
	puts lyrics[0]
	beat_string(1)
	puts lyrics[1]
	beat_string(1)
	puts lyrics[2]
	beat_string(1)
	puts lyrics[3]
	beat_string(1)
	puts lyrics[4]
	beat_string(1)
	puts lyrics[5]
	beat_string(1)
	puts lyrics[6]
	beat_string(1)
	puts lyrics[7]
	beat_string(1)
end

def chorus_1a(lyrics)
	puts $chords[3]
	puts lyrics[0]
	beat_string(2)
	puts lyrics[1]
	beat_string(2)
	puts lyrics[2]
	beat_string(2)
	puts lyrics[3]
	beat_string(1)
	puts lyrics[4]
	beat_string(1)
	puts $chords[1]
	puts lyrics[5]
	beat_string(2)
	puts lyrics[6]
	beat_string(2)
	puts lyrics[7]
	beat_string(2)
	puts lyrics[8]
	beat_string(1)
	puts lyrics[9]
	beat_string(1)
	puts $chords[3]
	puts lyrics[8]
	beat_string(2)
	puts lyrics[9]
	beat_string(2)
	puts lyrics[10]
	beat_string(2)
	puts lyrics[11]
	beat_string(2)
	puts $chords[1]
	puts lyrics[12]
	beat_string(4)
	puts lyrics[13]
	beat_string(4)
end

def chorus_2b(lyrics)
end


intro(8)
verse_1a(verse1a_lyrics)
verse_1b(verse1b_lyrics)
chorus(chorus_lyrics[0])
chorus(chorus_lyrics[1])
chorus(chorus_lyrics[2])
chorus(chorus_lyrics[3])
chorus(chorus_lyrics[4])
chorus(chorus_lyrics[5])
chorus(chorus_lyrics[6])
chorus(chorus_lyrics[7])


chorus_1a(chorus_1a_lyrics)
chorus_1a(chorus_1b_lyrics)
verse_1a(verse2a_lyrics)
verse_1b(verse2b_lyrics)
chorus_1a(chorus_1a_lyrics)
chorus_1a(chorus_1b_lyrics)
intro(8)
chorus_1a(chorus_1a_lyrics)
