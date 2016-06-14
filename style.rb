BEAT = 60/95.0
$measure = 1
$chords = ["Bm", "G", "Em", "D", "D/F#"]	
	

verse1a_lyrics = ["MIDNIGHT", "YOU COME AND PICK ME UP, NO", "HEADLIGHTS", "LONG DRIVE", "COULD END IN BURNING FLAMES OR", "PARADISE", "FADE IN THE VIEW, OH!", "IT'S BEEN A WHILE SINCE I HAVE EVEN", "HEARD FROM YOU", "HEARD FROM YOU"]
verse1b_lyrics = ["I SHOULD JUST TELL YOU TO LEAVE CAUSE I", "KNOW EXACTLY WHERE IT LEADS BUT I", "WATCH US GO ROUND AND ROUND EACH TIME", "YOU GOT THAT"]

chorus_1a_lyrics = ["JAMES DEEN DAYDREAM", "LOOK IN YOUR EYE AND I GOT THAT", "RED LIP CLASSIC", "THING THAT YOU LIKE AND WHEN WE GO", "CRASHING DOWN WE COME BACK EVERYTIME", "CAUSE WE NEVER GO OUT OF STYLE", "WE NEVER GO OUT OF STYLE", "YOU GOT THE"]
chorus_1b_lyrics = ["LONG HAIR", "SLICKED BACK", "WHITE T-SHIRT AND I GOT THAT", "GOOD GIRL FAITH AND A", "TIGHT LITTLE SKIRT AND WHEN WE GO", "CRASHING DOWN WE COME", "BACK EVERYTIME CAUSE WE NEVER GO", "OUT OF STYLE WE NEVER GO", "OUT OF STYLE"]
verse2a_lyrics = ["SO IT GOES", "HE CAN'T KEEP HIS WILD EYES", "ON THE ROAD", "HMMM", "TAKES ME HOME", "LIGHTS ARE OFF HE'S TAKING", "OFF HIS COAT", "OOHH YEAH I SAID", "I HEARD, OH! THAT", "YOU BEEN OUT AND ABOUT WITH SOME", "OTHER GIRL", "SOME OTHER GIRL"]
verse2b_lyrics = ["HE SAYS WHAT YOU'VE HEARD IS TRUE BUT I", "CAN'T HELP THINKING ABOUT YOU AND I", "I SAID I'VE BEEN THERE TOO A FEW", "TIMES"]

def beat_string(num)
	beat_string = "--"
	1.upto(num) do |n|
		puts "#{$measure} #{beat_string}"
		beat_string += " --"
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

def verse1a(lyrics)
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
	beat_string(7)
	puts lyrics[6]
	beat_string(5)
	puts lyrics[7]
	beat_string(4)
	puts lyrics[8]
	beat_string(4)
	puts lyrics[9]
	beat_string(4)	
end

def verse1b(lyrics)
	puts $chords[2]
	beat_string(2)
	puts lyrics[0]
	beat_string(2)
	puts $chords[4]
	beat_string(1.5)
	puts lyrics[1]
	beat_string(2.5)
	puts $chords[1]
	beat_string(2) 
	puts lyrics[2]
	beat_string(4)
	puts lyrics[3]
	beat_string(2)
end

def chorus1a(lyrics)
	puts $chords[3]
	puts lyrics[0]
	beat_string(4)
	puts lyrics[1]
	beat_string(4)
	puts $chords[1]
	puts lyrics[2]
	beat_string(4)
	puts lyrics[3]
	beat_string(4)
	puts $chords[3]
	puts lyrics[3]
	beat_string(4)
	puts lyrics[4]
	beat_string(4)
	puts $chords[1]
	puts lyrics[5]
	beat_string(4)
	puts lyrics[6]
	beat_string(4)
end


intro(8)
verse1a(verse1a_lyrics)
verse1b(verse1b_lyrics)
chorus1a(chorus_1a_lyrics)
