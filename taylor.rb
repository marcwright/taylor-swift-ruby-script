@beat = 60/95.5
@measure = 1
@chords = ["Bm", "G", "Em", "D", "D/F#"]
@beat_string = "-- "

lyrics = {
  verse_1_lyrics: [
    ["MIDNIGHT",      "",     "",     "",                 "",               "YOU COME AND", "PICK ME UP",     "NO"  ],
    ["HEADLIGHTS",    "",     "",     "",                 "",               "",             "",               ""    ],
    ["LONG DRIVE",    "",     "",     "",                 "",               "COULD END IN", "BURNING FLAMES", "OR"  ],
    ["PARADISE",      "",     "",     "",                 "",               "",             "",               "FADE"],
    ["IN THE VIEW",   "",     "OH",   "",                 "IT'S BEEN A WHILE","SINCE",  "I HAVE",         "EVEN"],
    ["HEARD FROM YOU","",     "",     "",                 "HEARD FROM YOU", "",             "",               ""    ],
    ["",    "I SHOULD",   "JUST TELL YOU TO", "LEAVE CAUSE I",  "",   "KNOW EXACTLY", "WHERE IT", "LEADS BUT I"],
    ["",    "WATCH US GO",    "ROUND AND",  "ROUND EACH TIME", "",  "", "",  "YOU GOT THAT"]
  ],
  chorus_lyrics: [
    ["JAMES", "DEEN", "DAY",    "DREAM",        "LOOK IN",    "YOUR EYE", "AND",  "I GOT THAT"        ],
    ["RED",   "LIP",  "CLASSIC","",             "THING THAT", "YOU",    "LIKE",   "AND WHEN WE GO"    ],
    ["CRASH", "ING",  "DOWN",   "WE COME",      "BACK EV"     "ERY",    "TIME",   "CAUSE WE NEVER GO" ],
    ["OUT",   "OF",   "STYLE",  "WE NEVER GO",  "OUT",        "OF",     "STYLE",  "YOU GOT THE"       ],
    ["LONG",  "HAIR", "SLICKED","BACK",         "WHITE",      "T",      "SHIRT",  "AND I GOT THAT"    ],
    ["GOOD",  "GIRL", "FAITH",  "AND A",        "TIGHT",      "LITTLE", "SKIRT",  "AND WHEN WE GO"    ],
    ["CRASH", "ING",  "DOWN",   "WE COME",      "BACK EVERY", "TIME",   "",       "CAUSE WE NEVER GO" ],
    ["OUT",   "OF",   "STYLE",  "WE NEVER GO",  "OUT",      "OF STYLE",       "", ""                  ]
  ],
  verse_2_lyrics: [
    ["SO IT GOES",    "",     "",     "",     "",             "HE CAN'T",   "KEEP HIS",   "WILD EYES"   ],
    ["ON THE ROAD",   "",     "",     "",     "HMMM",         "",           "",           ""            ],
    ["TAKES ME HOME", "",     "",     "",     "",             "LIGHTS ARE", "OFF HE'S",   "TAKING"      ],
    ["OFF HIS",       "COAT", "",     "",     "HMMM",         "YEAH",       "",           "I SAID"      ],
    ["I HEARD",       "",     "OH",   "THAT", "YOU BEEN OUT", "AND ABOUT",  "WITH",       "SOME"        ],
    ["OTHER GIRL",    "",     "",     "",     "SOME OTHER",   "GIRL",       "",           ""            ],
    ["",    "HE SAYS", "WHAT YOU'VE HEARD IS","TRUE BUT I",   "", "CAN'T STOP", "THINKING ABOUT","YOU AND I"],
    ["",    "I SAID I'VE",    "BEEN THERE",   "TOO A FEW",    "TIMES",    "",   "CAUSE",    "YOU GOT THAT"]
  ],
  outro_lyrics: [
    ["",    "",     "",     "",     "",     "",           "JUST",         "TAKE ME UP"],
    ["",    "",     "",     "",     "",     "YEAH",       "JUST",         "TAKE ME UP"],
    ["",    "",     "",     "",     "",     "",           "",             ""          ],
    ["",    "",     "",     "",     "OUT",  "OF STYLE",   "YOU GOT THAT", ""          ]
  ]
}

def beat_string
  puts "#{@beat_string}"
  @beat_string += "-- "
  @measure += 1
  sleep @beat
end

def intro
  8.times {beat_string}
  @beat_string = "-- "
end

def verse_chorus_loop(lyrics)
  8.times do |num|
    if lyrics[num] != ""
      puts lyrics[num]
    end
    beat_string
  end

  @beat_string = "-- "
end

4.times { intro }
8.times { |num| verse_chorus_loop( lyrics[:verse_1_lyrics][num] ) }
8.times { |num| verse_chorus_loop( lyrics[:chorus_lyrics][num] )  }
8.times { |num| verse_chorus_loop( lyrics[:verse_2_lyrics][num] ) }
8.times { |num| verse_chorus_loop( lyrics[:chorus_lyrics][num] )  }
4.times { |num| verse_chorus_loop( lyrics[:outro_lyrics][num] )    }
4.times { |num| verse_chorus_loop( lyrics[:chorus_lyrics][num] )  }
