-- constants

-- todo, choose these in main menu
difficulty_min = 5
difficulty_max = 30
-->8
-- all connected words
--- @type table all_connected_words
all_connected_words = {
"shook",
"blast",
"tramp",
"gloat",
"leapt",
"there",
"perch",
"grind",
"scone",
"score",
"snarl",
"wreak",
"snake",
"whine",
"flask",
"brace",
"drown",
"slept",
"triad",
"winch",
"trace",
"clump",
"judge",
"swish",
"brash",
"lurch",
"draft",
"scare",
"goose",
"snout",
"stork",
"speed",
"gloss",
"mouth",
"smile",
"spiel",
"thick",
"chord",
"stoop",
"creak",
"crept",
"flirt",
"large",
"spent",
"booth",
"stuck",
"since",
"hoist",
"sieve",
"sheet",
"wrote",
"touch",
"elude",
"story",
"prime",
"drove",
"thorn",
"vaunt",
"grant",
"flour",
"stool",
"merge",
"seedy",
"drank",
"flail",
"notch",
"space",
"thing",
"mouse",
"moody",
"chest",
"choke",
"quota",
"plait",
"grape",
"swing",
"brink",
"moist",
"dried",
"quote",
"punch",
"broke",
"fried",
"spoil",
"blame",
"lobby",
"cloud",
"worth",
"cress",
"skunk",
"frisk",
"penne",
"snide",
"guise",
"prize",
"route",
"crude",
"stunt",
"reach",
"wooly",
"poise",
"grift",
"woody",
"trunk",
"tread",
"spill",
"shave",
"skill",
"crick",
"stalk",
"snowy",
"joint",
"elite",
"gland",
"broth",
"lingo",
"frank",
"whale",
"noisy",
"guide",
"whiny",
"conch",
"bingo",
"treat",
"slick",
"chaff",
"wring",
"dread",
"truck",
"cried",
"stove",
"wordy",
"clone",
"spoon",
"elide",
"swoon",
"probe",
"brain",
"drift",
"grunt",
"nerdy",
"plane",
"hobby",
"prick",
"flung",
"beast",
"grope",
"spied",
"shaft",
"smote",
"craze",
"reedy",
"bongo",
"twirl",
"moose",
"drunk",
"glare",
"bread",
"prove",
"shaky",
"lorry",
"quell",
"chase",
"preen",
"trite",
"brake",
"shown",
"primp",
"sharp",
"clash",
"verve",
"bleak",
"forte",
"spunk",
"groan",
"flaky",
"peace",
"spilt",
"roast",
"snort",
"shirk",
"lousy",
"trade",
"blown",
"cheat",
"close",
"tease",
"shelf",
"crown",
"shift",
"shunt",
"grown",
"clout",
"whose",
"shied",
"briny",
"spite",
"marsh",
"stunk",
"blade",
"plied",
"vault",
"spike",
"grave",
"liege",
"pluck",
"crier",
"froth",
"wheat",
"trick",
"welch",
"beach",
"swash",
"gorge",
"scald",
"weave",
"shady",
"noise",
"stain",
"skull",
"flash",
"trawl",
"lease",
"stone",
"opine",
"barge",
"scarf",
"phone",
"stave",
"stout",
"slunk",
"brand",
"dense",
"sling",
"sheen",
"truce",
"booze",
"spine",
"sneer",
"mince",
"adore",
"spate",
"cleat",
"smock",
"verso",
"shoot",
"spend",
"fling",
"small",
"crush",
"grail",
"prowl",
"steep",
"guilt",
"trash",
"watch",
"glide",
"stamp",
"crypt",
"blink",
"spice",
"dying",
"shale",
"knack",
"print",
"blond",
"hutch",
"sense",
"clasp",
"blind",
"glove",
"shack",
"gross",
"heavy",
"coast",
"vouch",
"pinch",
"smash",
"drake",
"primo",
"bleep",
"beaut",
"aloud",
"slang",
"joist",
"steak",
"foray",
"thyme",
"thank",
"smelt",
"botch",
"scout",
"siege",
"prose",
"spare",
"cinch",
"wrest",
"budge",
"booty",
"frame",
"tough",
"slink",
"clack",
"sheer",
"latch",
"spire",
"among",
"urine",
"arise",
"brine",
"bribe",
"spout",
"spool",
"drone",
"flare",
"truss",
"gauze",
"hunch",
"trump",
"fluke",
"goofy",
"glaze",
"slash",
"strut",
"shall",
"blend",
"chose",
"dross",
"shark",
"wince",
"being",
"cleft",
"grand",
"while",
"swell",
"stint",
"grimy",
"slain",
"meant",
"shirt",
"shorn",
"snaky",
"pitch",
"flesh",
"trait",
"thumb",
"speak",
"irony",
"shard",
"prank",
"plead",
"badge",
"beech",
"boast",
"stick",
"globe",
"steel",
"stink",
"brunt",
"doing",
"snipe",
"stock",
"bland",
"pleat",
"suing",
"gaunt",
"nervy",
"waist",
"tribe",
"gravy",
"reuse",
"leave",
"forgo",
"heady",
"quite",
"grade",
"fleet",
"fetch",
"shawl",
"chard",
"bilge",
"crowd",
"knock",
"month",
"pence",
"finch",
"drink",
"spelt",
"along",
"sleet",
"crony",
"groom",
"chuck",
"tried",
"dryer",
"clove",
"glade",
"write",
"sooty",
"daunt",
"spark",
"wrist",
"crane",
"brush",
"chock",
"tying",
"steal",
"giant",
"gooey",
"growl",
"chide",
"croak",
"glint",
"march",
"frown",
"grain",
"black",
"smack",
"sleep",
"storm",
"steam",
"stilt",
"awash",
"slimy",
"swine",
"sworn",
"thong",
"cling",
"slide",
"tripe",
"plump",
"tryst",
"dough",
"trial",
"going",
"verse",
"flack",
"tweet",
"match",
"moldy",
"flood",
"vying",
"loose",
"sweat",
"staid",
"crave",
"creek",
"spoke",
"scalp",
"swamp",
"block",
"blare",
"forge",
"crumb",
"alone",
"fresh",
"spurt",
"stale",
"scour",
"flume",
"glass",
"grime",
"trust",
"plank",
"horde",
"plush",
"drawl",
"batch",
"stair",
"stark",
"spurn",
"point",
"binge",
"stoke",
"shire",
"crust",
"smirk",
"graph",
"adorn",
"hence",
"whole",
"flout",
"green",
"plain",
"showy",
"scorn",
"irate",
"groin",
"those",
"drape",
"clamp",
"crepe",
"force",
"slime",
"chart",
"crook",
"stony",
"eking",
"speck",
"cloth",
"needy",
"cluck",
"fleck",
"clung",
"wrack",
"suite",
"crate",
"freak",
"react",
"prawn",
"chime",
"plaid",
"flake",
"graft",
"spiky",
"bench",
"scale",
"clear",
"smear",
"flair",
"shine",
"welsh",
"craft",
"spell",
"shear",
"plunk",
"saint",
"farce",
"stare",
"spade",
"wreck",
"brook",
"spiny",
"bloom",
"pouch",
"shiny",
"beady",
"stump",
"stake",
"break",
"swept",
"pooch",
"owing",
"flush",
"bough",
"gouge",
"trend",
"house",
"sleek",
"flock",
"stole",
"sweep",
"plier",
"place",
"atone",
"sweet",
"steer",
"stack",
"coach",
"flyer",
"shell",
"trove",
"flunk",
"swirl",
"verge",
"style",
"tooth",
"stand",
"brick",
"sooth",
"elope",
"stall",
"train",
"short",
"louse",
"graze",
"retch",
"tract",
"brawl",
"chick",
"spank",
"brisk",
"fudge",
"trail",
"chasm",
"least",
"forth",
"joust",
"skirt",
"flier",
"boost",
"dream",
"worst",
"scary",
"crawl",
"acorn",
"swear",
"smite",
"shalt",
"rouse",
"blurt",
"stash",
"fence",
"bulge",
"plume",
"faint",
"glean",
"forty",
"tweed",
"scoop",
"stood",
"broom",
"slosh",
"rouge",
"slice",
"worry",
"sport",
"guild",
"dingy",
"serve",
"rhyme",
"leach",
"snack",
"braid",
"etude",
"gulch",
"drier",
"blunt",
"penny",
"sloop",
"guile",
"plate",
"haunt",
"taint",
"couch",
"boozy",
"wrong",
"taunt",
"leash",
"munch",
"hinge",
"shade",
"bride",
"mulch",
"horse",
"porch",
"butch",
"chore",
"spore",
"think",
"thump",
"class",
"snoop",
"dwelt",
"patch",
"spook",
"elate",
"whack",
"hitch",
"drive",
"terse",
"foist",
"built",
"drawn",
"share",
"gloom",
"clown",
"scamp",
"bleed",
"scope",
"scant",
"harsh",
"state",
"shore",
"stank",
"crock",
"greed",
"phony",
"swami",
"flown",
"sneak",
"bloke",
"cramp",
"greet",
"stern",
"smoke",
"crump",
"shove",
"creed",
"fault",
"noose",
"sword",
"crisp",
"ready",
"shock",
"torch",
"smart",
"jaunt",
"plant",
"leant",
"grass",
"still",
"drain",
"bring",
"shone",
"quilt",
"goody",
"price",
"slung",
"swift",
"chafe",
"witch",
"prune",
"trice",
"cheer",
"ditch",
"frail",
"creep",
"prone",
"spear",
"spoof",
"grace",
"slant",
"teach",
"heave",
"nudge",
"tense",
"swath",
"bleat",
"creme",
"shuck",
"skulk",
"trope",
"shape",
"snail",
"great",
"roost",
"frock",
"hatch",
"wrung",
"freed",
"crazy",
"breed",
"charm",
"click",
"lying",
"slate",
"swill",
"woozy",
"grove",
"blush",
"bravo",
"plumb",
"these",
"smoky",
"scent",
"press",
"crash",
"crime",
"sorry",
"flank",
"brave",
"feast",
"chant",
"snuck",
"chump",
"brass",
"foyer",
"worse",
"stage",
"stead",
"slump",
"roach",
"gleam",
"heist",
"flame",
"brood",
"check",
"gripe",
"suave",
"sheep",
"build",
"posse",
"cross",
"weedy",
"sloth",
"crest",
"clank",
"youth",
"shake",
"clean",
"float",
"slope",
"track",
"snare",
"flick",
"shout",
"blank",
"belch",
"rough",
"snore",
"yeast",
"spicy",
"crank",
"quill",
"brown",
"quiet",
"swore",
"champ",
"freer",
"dingo",
"north",
"grate",
"cream",
"blaze",
"pride",
"floor",
"smell",
"paint",
"cough",
"blurb",
"scold",
"skate",
"clang",
"booby",
"shame",
"chess",
"grasp",
"bunch",
"clock",
"chunk",
"stein",
"nerve",
"floss",
"swung",
"cheap",
"ovine",
"cheek",
"smith",
"store",
"dwell",
"flute",
"stomp",
"toast",
"broad",
"bloat",
"phase",
"quoth",
"poach",
"peach",
"cease",
"arose",
"leech",
"start",
"sting",
"where",
"slurp",
"swoop",
"gauge",
"crimp",
"adobe",
"crass",
"singe",
"scaly",
"slack",
"clink",
"dress",
"stung",
"prude",
"scene",
"brawn",
"bobby",
"white",
"catch",
"theme",
"dutch",
"crack",
"shush",
"prong",
"shank",
"twine",
"cloak",
"eying",
"crone",
"south",
"twice",
"steed",
"flint",
"pried",
"slush",
"lunch"
}

acw = all_connected_words
valid_words = {}
for word in all(acw) do
	valid_words[word] = true
end
-->8
-- language utils
function concat_with(stringlist, separator)
	local result
	for v in all(stringlist) do
		if not result then
			result = v
		else
			result = result .. separator .. v
		end
	end
	return result
end

function shift_letter(ltr, delta)
	local i = ord(ltr) - ord("a")
	i += delta
	i = (i + 26) % 26
	return chr(i + ord("a"))
end

-->8
-- graph utils, table from a word (string) to a set (table) of its neighbors
-- initialized here
neighs = {}
function init_neighs()
	neighs = {}
	-- e.g. { "c*amp": { "cramp", "clamp", "champ" }}
	local buckets = {}
	for word in all(acw) do
		for i = 1, #word do
			local buckword = sub(word, 0, i - 1) .. "*" .. sub(word, i + 1)
			if not buckets[buckword] then
				buckets[buckword] = {}
			end
			add(buckets[buckword], word)
		end
	end
	for word in all(acw) do
		neighs[word] = {}
		for i = 1, #word do
			local buckword = sub(word, 0, i - 1) .. "*" .. sub(word, i + 1)
			for word2 in all(buckets[buckword]) do
				if word ~= word2 then
					add(neighs[word], word2)
				end
			end
		end
	end
end

function distance_to_you()
	--let's use breadth-first search
	local frontier = {my_word}
	local distances = {}
	distances[my_word] = 0
	while #frontier > 0 do
		local word = deli(frontier, 1)
		-- small optimization:
		if (word == your_word) return distances[word]
		for neigh in all(neighs[word]) do
			if distances[neigh] == nil do
				distances[neigh] = distances[word] + 1
				add(frontier, neigh)
			end
		end
	end
	assert(distances[your_word] != nil, my_word.." vs "..your_word)
	return distances[your_word]
end
-->8
-- draw functions

pi  = 3.1415926
tau = 6.2831853

patts = {
 	[0]=0b1000001001000001,
 	[1]=0b0001100000100100,
 	[2]=0b0100000110000010,
 	[3]=0b0010010000011000,
 }

function draw_bg()
 fillp(0b1010010110100101)
	rectfill(0,0,128,128,1,0)
 local y = flr(t() * 3 % 4)
 local patt = patts[y]
 fillp(patt)
	rectfill(8,0,128-8,128,1,0)
end


function draw_letter(letter, i, x, y)
 num = ord(letter) - ord("a")
	rownum = flr(num / 8) --h=0, i=1
	spra = 64
	sprnum = spra + num * 2 + rownum * 16

	spr(
		sprnum,
		x + 16 * (i - 1),
		y,
		2, 2
	)
end

function draw_word(str, x, y)
	for i = 1, #str do
		local letter = str[i]
		draw_letter(letter, i, x, y)
	end
end

function draw_my_word()
 local c_border = 14
 local c_fill = 15
 local str = my_word
	local dist_h = 100
	local od = our_distance
	if (od <=24) dist_h = od*5-25
	if (od <=12) dist_h = od*4-12
	if (od <= 8) dist_h = od*3-5
	if (od <= 4) dist_h = od*2
	local tdiff = t() - t_recent_input
	local blink = tdiff % 1 < 0.3
	local buttblink = tdiff < 0.3
	for i = 1, #str do
	 if word_is_valid then
			pal(c_border, 3)
			pal(c_fill, 11)
		else
			pal(c_border, 5)
			pal(c_fill, 6)
			if (buttblink) then
				pal(c_border, 8)
			end
		end
		--selected letter (may blink)
		if sel_let_idx == i then
			if (blink) pal(c_border, 12)
			pal(c_fill, 7)
			--when skip button held
			if btn(🅾️) then
				if sel_letter_has_alts then
				 pal(c_fill, 10)
				else
					pal(c_border, 8)
					pal(c_fill, 9)
				end
			end
		end
		draw_letter(str[i], i, 24, 20+dist_h)
	end
	pal()
end

function draw_your_word()
 str = your_word
	pal(14, 4)
	pal(15, 9)
	local wfx = sin(time() * 0.15) * 2.8
 local	wfy = cos(time() * 0.4) * 1.8
	for i = 1, #str do
  local letter = str[i]
		local fx = sin((time()+3*i)*(0.2-0.01*i))*0.8
		local fy = cos((time()+3*i)*(0.2-0.01*i))*2.4
		if letter == my_word[i] then
			fx *= 0
			fy *= 0
			wfx *= 0.2
			wfy *= 0.2
		end
		draw_letter(letter, i, 24+wfx+fx, 10+wfy+fy)
	end
	pal()
end

function draw_endgame()
	pal(14, 1)
	pal(15, 10)
	str = my_word
	for i = 1, #str do
		draw_letter(str[i], i, 24, 10)
	end

	for k=1,10 do
		local randang = flr(t()*11)%tau + k*0.3
		for i=1,13 do
			local x = 64+(46+i/2)*cos(randang)
			local y = 18+(10+i/2)*sin(randang)
			pset(x, y, 10)
		end
	end

	print("\^w\^tsolved!", 38, 80)
	print("press ❎ to restart", 26, 110)
	pal()
end
-->8
--game lifecycle
game_ended = false
my_word = rnd(acw)
your_word = rnd(acw)
my_last_word = my_word
word_is_valid = true
sel_letter_has_alts = false
-- 1-index of selected letter
sel_let_idx = 3
-- used to blink right after input
t_recent_input = t()
--0 is win, 1 is near win
our_distance = 999

function start_round()
	-- randomize start+end words
	repeat
		my_word = rnd(acw)
		your_word = rnd(acw)
	until (
			my_word != your_word
			and distance_to_you() > difficulty_min
			and distance_to_you() < difficulty_max
	)
	word_is_valid = true
	our_distance = distance_to_you()
	game_ended = false
end

-->8
--entry points

function _init()
	init_neighs()
	start_round()
end

function _draw()
	cls()
	draw_bg()

	if game_ended then
		draw_endgame()
		return
	end

	draw_your_word()
	draw_my_word()
end

function _update()
	if game_ended then
		if (btnp(❎)) start_round()
		return
	end

	local word_was = my_word
	local move = 0
	if (btnp(⬅️)) move = -1
	if (btnp(➡️)) move = 1
	if move != 0 and word_is_valid then
		sel_let_idx = (sel_let_idx + move - 1) % 5 + 1
	end
	local shift = 0
	if (btnp(⬆️)) shift = 1
	if (btnp(⬇️)) shift = -1
	if shift != 0 then
	 repeat
			local ltr = shift_letter(
					my_word[sel_let_idx], shift
			)
			my_word = sub(
					my_word, 1, sel_let_idx - 1
			)..ltr..sub(
					my_word, sel_let_idx + 1
			)
		until not btn(🅾️) or valid_words[my_word]
	end
	if move != 0 or shift != 0 then
		t_recent_input = t()
	end

	if my_word != word_was do
		word_is_valid = valid_words[my_word]
		if word_is_valid then
			our_distance = distance_to_you()
		end
	end

	if word_is_valid then
		sel_letter_has_alts = false
		for other_word in all(neighs[my_word]) do
			if other_word[sel_let_idx] != my_word[sel_let_idx] then
				sel_letter_has_alts = true
			end
		end
	--otherwise, exactly 1 alt
	else sel_letter_has_alts = true end

	--end of game
	if my_word == your_word then
		sfx(4)
		sfx(5)
		game_ended = true
		return
	end

	-- sound effects
	if shift != 0 and word_is_valid then
		sfx(2)
	end
	if shift != 0 and not word_is_valid then
		sfx(3)
	end
	if move != 0 and word_is_valid then
		sfx(1)
	end
	if move != 0 and not word_is_valid then
		sfx(6)
	end
end
