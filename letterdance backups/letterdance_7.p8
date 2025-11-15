pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
-- constants

-- todo, choose these in main menu
difficulty_min = 20--5
difficulty_max = 23--30

points_per_leap = 7
points_for_snap = 10
points_for_compass = 20
-->8
-- all connected words
--- @type table all_connected_words
all_connected_words = {
"shred",
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
-- misc utils

-- calc size of non-array tables
function size(tbl)
	acc = 0
	for x in pairs(tbl) do
		acc += 1
	end
	return acc
end

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
	--rectfill(8,0,128-8,128,1,0)
	rectfill(0,0,128,128,1,0)
	fillp()
end

function draw_exps()
	--empty/filled exp circles
	for i=1,30 do
		local num = 30+1-i
		local gotten = exp >= num and 2 or 1
		local fc = ({1,13})[gotten]
		local bc = 0
		if num % points_per_leap == 0 then
			bc = ({4, 9})[gotten]
		end
		if num == points_for_snap then
			bc = ({2, 15})[gotten]
		end
		if num == points_for_compass then
			bc = ({2, 15})[gotten]
		end
		circfill(
				5+(i%2)*5,
				1+i*4,
				4,
				fc
		)
		circ(
				5+(i%2)*5,
				1+i*4,
				4,
				bc
		)
	end
	-- leap count
	if exp >= points_per_leap then
		for i=1,leaps_available do
			spr(32, 108, 132-24*i, 2, 2)
		end
	end
	-- unlock texts
	if exp == points_for_snap then
		print(
		"★ power up! ★",
			34,
			56,
			7
		)
		print(
		"hold 🅾️ to snap",
			34,
			64,
			7
		)
	end
	if exp == points_for_compass then
		local plusy = 0
		local od = our_distance
		if (od <=15) plusy = 30
		print(
		"★ power up! ★",
			34,
			56+plusy,
			7
		)
		print(
		"compass activated",
			32,
			64+plusy,
			7
		)
	end
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
	local dist_h = 90
	local od = our_distance
	if (od <=23) dist_h = od*5-25
	if (od <=12) dist_h = od*4-12
	if (od <= 8) dist_h = od*3-5
	if (od <= 4) dist_h = od*2
	if (exp < points_for_compass) dist_h = 90
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
				if (is_leaping) pal(c_border, 9)
			end
		end
		--selected letter (may blink)
		if sel_let_idx == i then
			if (blink) pal(c_border, 12)
			pal(c_fill, 7)
			--when snap button held
			if btn(🅾️) and exp >= points_for_snap then
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
words_seen = {}
exp = 0
leaps_available = 0
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
is_leaping = false

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
	my_last_word = my_word
	word_is_valid = true
	our_distance = distance_to_you()
	game_ended = false
	words_seen = { [my_word]=true }
	exp = 0
	leaps_available = 0
	is_leaping = false
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
	draw_exps()
	
	if game_ended then
		draw_endgame()
		return
	end
	
	draw_your_word()
	draw_my_word()
end

function _update()
	color(7) -- for debug prints
	if game_ended then
		if (btnp(❎)) start_round()
		return
	end

	local move = 0
	if (btnp(⬅️)) move = -1
	if (btnp(➡️)) move = 1
	if move != 0 then
		if word_is_valid then
			sel_let_idx = (sel_let_idx + move - 1) % 5 + 1
		else if leaps_available > 0 and not is_leaping then
				sel_let_idx = (sel_let_idx + move - 1) % 5 + 1
			end
		end
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
		until (
		 valid_words[my_word]
			or not (
					btn(🅾️) -- snap held
					and exp >= points_for_snap
			)
		)
	end
	if move != 0 or shift != 0 then
		t_recent_input = t()
	end
	
	same_letter_count = 0
	for i=1,5 do
		if my_word[i] == my_last_word[i] do
			same_letter_count += 1
		end
	end
	if same_letter_count >= 4 do
		is_leaping = false
	else
		is_leaping = true
	end

	word_is_valid = valid_words[my_word] == true
	if my_word != my_last_word and word_is_valid then
		our_distance = distance_to_you()
		my_last_word = my_word
		if is_leaping then
			leaps_available -= 1
			sfx(4)
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
		sfx(9)
		sfx(10)
		game_ended = true
		return
	end
	local scored = words_seen[my_word] == nil and word_is_valid
	if (scored) then
		words_seen[my_word] = true
		exp += 1
		if exp % points_per_leap == 0 then
			leaps_available += 1
		end
	end

	-- sound effects
	if shift != 0 and word_is_valid then
		if (scored) sfx(2)
		if (not scored) sfx(3)
	end
	if move != 0 and word_is_valid then
		sfx(1)
	end
	if shift != 0 and not word_is_valid then
		sfx(5)
	end
	if move != 0 and not word_is_valid then
		sfx(6)
	end
end
	
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007000000000000000000000000000000000000000000000000000000000000eeeeee44444444444444004444444404444444eeee00000000000000000000
000770000000000000000000000000000000000000000000000000000000000000efffff99994499999994444999999444999999fffe00000000000000000000
000770000000000000000000000000000000000000000000000000000000000000efffff99994499999999449999999944999999fffe00000000000000000000
007007000000000000000000000000000000000000000000000000000000000000eeeeff94444499944444449994444444444999eeee00000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499944444049994444400004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499999994044999999440004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499999944004499999940004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499944440000444499940004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499944444444444499940004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499999999449999999440004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eff94000499999994444999994400004999e00000000000000000000000
000000000000000000000000000000000000000000000000000000000000000000000eee44000444444444004444444000004444e00000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00303303030030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03303113133033000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00011999111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111111911111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111111911111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111199911111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111919911111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111199191111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00111111191111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00011111191110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0030bb13111030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
03300b030bb033000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000eeeeee00000000eeeeeeee0000000000eeeeeee0000000eeeeeeee00000000eeeeeeeee0000000eeeeeeeee000000000eeeeeee0000000eeeeeeeeee000
0000eeffffee0000000effffffee00000000eefffffee000000effffffee0000000efffffffee000000efffffffee0000000eefffffee000000efffeefffe000
000eeffffffee000000efffffffee000000eefffffffe000000efffffffee000000effffffffe000000effffffffe000000eefffffffe000000efffeefffe000
000efffeefffe000000efffeefffe000000efffeeeeee000000efffeefffe000000efffeeeeee000000efffeeeeee000000efffeeeeee000000efffeefffe000
000efffeefffe000000efffeefffe000000efffe00000000000efffeefffe000000efffeeeee0000000efffeeeee0000000efffeeeeee000000efffeefffe000
000effffffffe000000effffffffe000000efffe00000000000efffeefffe000000efffffffe0000000efffffffe0000000efffeffffe000000effffffffe000
000effffffffe000000efffffffee000000efffe00000000000efffeefffe000000effffffee0000000effffffee0000000efffeffffe000000effffffffe000
000efffeefffe000000efffeefffe000000efffe00000000000efffeefffe000000efffeeee00000000efffeeee00000000efffeefffe000000efffeefffe000
000efffeefffe000000efffeefffe000000efffeeeeee000000efffeefffe000000efffeeeeee000000efffe00000000000efffeefffe000000efffeefffe000
000efffeefffe000000efffffffee000000eefffffffe000000efffffffee000000effffffffe000000efffe00000000000eefffffffe000000efffeefffe000
000efffeefffe000000effffffee00000000eefffffee000000effffffee0000000efffffffee000000efffe000000000000eeffffffe000000efffeefffe000
000eeeeeeeeee000000eeeeeeee0000000000eeeeeee0000000eeeeeeee00000000eeeeeeeee0000000eeeee0000000000000eeeeeeee000000eeeeeeeeee000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000eeeee00000000000000eeeee000000eeeeeeeeee000000eeeee00000000000eeee00eeee000000eeeeeeee000000000eeeeeeee0000000eeeeeeeee0000
00000efffe00000000000000efffe000000efffeefffe000000efffe0000000000eeffeeeeffee00000effffffee0000000eeffffffee000000efffffffee000
00000efffe00000000000000efffe000000efffeefffe000000efffe0000000000effffeeffffe00000efffffffee00000eeffffffffee00000effffffffe000
00000efffe00000000000000efffe000000efffeefffe000000efffe0000000000effffffffffe00000efffeefffe00000efffeeeefffe00000efffeefffe000
00000efffe00000000000000efffe000000efffefffee000000efffe0000000000effffffffffe00000efffeefffe00000efffe00efffe00000efffeefffe000
00000efffe00000000000000efffe000000effffffee0000000efffe0000000000efffeffefffe00000efffeefffe00000efffe00efffe00000effffffffe000
00000efffe00000000000000efffe000000effffffee0000000efffe0000000000efffeeeefffe00000efffeefffe00000efffe00efffe00000efffffffee000
00000efffe00000000000000efffe000000efffefffee000000efffe0000000000efffe00efffe00000efffeefffe00000efffe00efffe00000efffeeeee0000
00000efffe000000000eeeeeefffe000000efffeefffe000000efffeeeeee00000efffe00efffe00000efffeefffe00000efffeeeefffe00000efffe00000000
00000efffe000000000efffffffee000000efffeefffe000000effffffffe00000efffe00efffe00000efffeefffe00000eeffffffffee00000efffe00000000
00000efffe000000000effffffee0000000efffeefffe000000effffffffe00000efffe00efffe00000efffeefffe000000eeffffffee000000efffe00000000
00000eeeee000000000eeeeeeee00000000eeeeeeeeee000000eeeeeeeeee00000eeeee00eeeee00000eeeeeeeeee0000000eeeeeeee0000000eeeee00000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000eeeeeeee0000000eeeeeeeee00000000eeeeeeee000000eeeeeeeeeee000000eeeeeeeeee00000eeee000eeee000000eeee00eeee00000eeee0000eeee00
000eeffffffee000000efffffffee000000eeffffffee00000efffffffffe000000efffeefffe00000effee0eeffe00000eeffe00effee0000effee00eeffe00
00eeffffffffee00000effffffffe000000effffffffe00000efffffffffe000000efffeefffe00000efffe0efffe00000efffe00efffe0000efffeeeefffe00
00efffeeeefffe00000efffeefffe000000efffeeeeee00000eeeefffeeee000000efffeefffe00000efffe0efffe00000efffe00efffe0000effffeeffffe00
00efffe00efffe00000efffeefffe000000efffeeeee000000000efffe000000000efffeefffe00000efffe0efffe00000efffe00efffe0000eeffffffffee00
00efffe00efffe00000effffffffe000000eeffffffee00000000efffe000000000efffeefffe00000efffeeefffe00000efffeeeefffe00000eeffffffee000
00efffe00efffe00000efffffffee0000000eeffffffe00000000efffe000000000efffeefffe00000eefffefffee00000efffeffefffe000000eeffffee0000
00efffe0eefffe00000efffeefffe00000000eeeefffe00000000efffe000000000efffeefffe000000efffefffe000000effffffffffe00000eeffffffee000
00efffeeefffee00000efffeefffe000000eeeeeefffe00000000efffe000000000efffeefffe000000efffefffe000000effffffffffe0000eeffffffffee00
00eefffffffffe00000efffeefffe000000efffffffee00000000efffe000000000eeffffffee000000eefffffee000000effffeeffffe0000efffeeeefffe00
000eefffffeffe00000efffeeeffe000000eefffffee000000000efffe0000000000eeffffee00000000eefffee0000000efffeeeefffe0000effee00eeffe00
0000eeeeeeeeee00000eeeee0eeee0000000eeeeeee0000000000eeeee00000000000eeeeee0000000000eeeee00000000eeeee00eeeee0000eeee0000eeee00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000eeeeeeeeee0000000eeeeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000efffeefffe000000eefffffffe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000efffeefffe000000effffffffe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000efffeefffe000000eeeeeefffe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000efffeefffe00000000eeeffffe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000effffffffe0000000eefffffee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000effffffffe000000eeffffeee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000eeeeeefffe000000effffee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000eeeeeefffe000000efffeeeeee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000efffffffee000000effffffffe000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000eefffffee0000000efffffffee000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000eeeeeee00000000eeeeeeeee0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000c000001700017000370014700177001370010700147001d700237002b700307000c70036700377002170034b00107000000024000237000d7001b7002ed00167001d000070000c0000c0000c0000c00000000
00020000210103c600136001d60000600276002460016600116000f600136001b600226001f6001f600246002460027600296002b6002b6002b6002e60030600336003360030600356001f600008000080000800
000400002e1203a1302f9002a90016900109000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000400001b110271102f9002a90016900109000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000500001655022500225500c500165500c5002e5500e5000e5000e5000e500105000e50000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500
000300000761007600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000600002a62009610000000000000000000000000000000000000000000000000000000000000000001c60000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000c5500f550135501855018550185501855018540185001850018500185000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500
0010000024550275502b5503055030550305503055030540185001850018500185000050000500005000050000500005000050000500005000050000500005000050000500005000050000500005000050000500
__music__
00 01424344

