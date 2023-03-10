-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data_Legion")

function module:OnInitialize()
	core:RegisterMobData("軍臨天下", {
		[89016] = {name="Ravyn-Drath",locations={[1015]={40404100},},quest=37537,},
		[89650] = {name="Valiyaka the Stormbringer",locations={[1015]={47203420},},quest=37726,},
		[89816] = {name="Golza the Iron Fin",locations={[1015]={65404000},},quest=37820,vignette="Horn of the Siren",},
		[89846] = {name="Captain Volo'ren",locations={[1015]={52604540},},quest=37821,},
		[89850] = {name="The Oracle",locations={[1015]={59605520},},quest=37822,},
		[89865] = {name="Mrrgrl the Tide Reaver",locations={[1015]={50003440},},quest=37823,},
		[89884] = {name="Flog the Captain-Eater",locations={[1015]={25005660,44003240,45205680},},quest=37824,},
		[90057] = {name="Daggerbeak",locations={[1015]={51003140},},quest=37869,},
		[90139] = {name="Inquisitor Ernstenbok",locations={[1017]={63607420},},quest=37908,vignette="Marius & Tehd",},
		[90164] = {name="Warbringer Mox'na",locations={[1015]={47405300},},quest=37909,vignette="Seek & Destroy Squad",},
		[90173] = {name="Arcana Stalker",locations={[1015]={47405300},},quest=37909,},
		[90217] = {name="Normantis the Deposed",locations={[1015]={49400860},[1018]={55009660},},quest=37928,},
		[90244] = {name="Arcavellus",locations={[1015]={59801210},},quest=37932,},
		[90505] = {name="Syphonus",locations={[1015]={67205140},},quest=37989,},
		[90803] = {name="Infernal Lord",locations={[1015]={35405020},},quest=38037,vignette="Cache of Infernals",},
		[90901] = {name="Pridelord Meowl",locations={[1015]={56002900},},quest=38061,},
		[91100] = {name="Brogozog",locations={[1015]={59004660},},quest=38212,vignette="Marius & Tehd",},
		[91113] = {name="Tide Behemoth",locations={[1015]={61206180},},quest=38217,},
		[91114] = {name="Tide Behemoth",locations={[1015]={61206180},},quest=38217,},
		[91115] = {name="Tide Behemoth",locations={[1015]={61206200},},quest=38217,},
		[91187] = {name="Beacher",locations={[1015]={32402840},},quest=38238,},
		[91289] = {name="Cailyn Paledoom",locations={[1015]={52402300},},quest=38268,},
		[91529] = {name="Glimar Ironfist",locations={[1017]={41406640},},quest=38333,},
		[91579] = {name="Doomlord Kazrok",locations={[1015]={43202820},},quest=38352,},
		[91780] = {name="Mother Clacker",locations={[1017]={35401840},},quest=38422,vignette="The Blightcaller",},
		[91788] = {name="Shellmaw",locations={[1046]={31405060,33005560,37006220},},},
		[91795] = {name="Stormwing Matriarch",locations={[1017]={49407180},},quest=40939,vignette="Stormdrake Matriarch",},
		[91803] = {name="Fathnyr",locations={[1017]={46408340},},quest=38425,},
		[91874] = {name="Bladesquall",locations={[1017]={45807740},},quest=38431,},
		[91892] = {name="Thane Irglov the Merciless",locations={[1017]={41207180},},quest=38424,vignette="Thane's Mead Hall",},
		[92040] = {name="Fenri",locations={[1022]={83404820},},quest=38461,},
		[92117] = {name="Gorebeak",locations={[1018]={59407640},},quest=38468,tameable=true,},
		[92152] = {name="Whitewater Typhoon",locations={[1017]={-316189820,36405140},},quest=38472,},
		[92180] = {name="Seersei",locations={[1018]={41607740},},quest=38479,},
		[92205] = {name="Darkest Fear",locations={[1018]={64407680},},hidden=true,},
		[92423] = {name="Theryssia",locations={[1018]={38005280},},quest=38772,},
		[92590] = {name="Hook",faction="Horde",locations={[1017]={42005760},},quest=38625,vignette="Hook & Sinker",},
		[92591] = {name="Sinker",faction="Horde",locations={[1017]={42005760},},quest=38625,vignette="Hook & Sinker",},
		[92599] = {name="Bloodstalker Alpha",locations={[1017]={37604180},},quest=38626,tameable=true,vignette="Worg Pack",},
		[92604] = {name="Champion Elodie",faction="Alliance",locations={[1017]={44202280},},quest=38627,vignette="Worgen Stalkers",},
		[92609] = {name="Tracker Jack",faction="Alliance",locations={[1017]={44402280},},quest=38627,vignette="Worgen Stalkers",},
		[92611] = {name="Ambusher Daggerfang",faction="Alliance",locations={[1017]={44002300},},quest=38627,vignette="Worgen Stalkers",},
		[92613] = {name="Priestess Liza",faction="Alliance",locations={[1017]={44402280},},quest=38627,vignette="Worgen Stalkers",},
		[92626] = {name="Deathguard Adams",faction="Horde",locations={[1017]={44202300},},quest=38630,vignette="Forsaken Deathsquad",},
		[92631] = {name="Dark Ranger Jess",faction="Horde",locations={[1017]={44402260},},quest=38630,vignette="Forsaken Deathsquad",},
		[92633] = {name="Assassin Huwe",faction="Horde",locations={[1017]={44002300},},quest=38630,vignette="Forsaken Deathsquad",},
		[92634] = {name="Apothecary Perez",faction="Horde",locations={[1017]={44202240},},quest=38630,vignette="Forsaken Deathsquad",},
		[92682] = {name="Helmouth Raider",locations={[1017]={57804500},},quest=38642,},
		[92685] = {name="Captain Brvet",locations={[1017]={57804460},},quest=38642,vignette="Helmouth Raiders",},
		[92703] = {name="Helmouth Raider",locations={[1017]={57804500},},quest=38642,},
		[92725] = {name="Son of Goredome",locations={[1017]={56202920},},hidden=true,},
		[92751] = {name="Ivory Sentinel",locations={[1017]={59606900},},quest=39031,},
		[92763] = {name="The Nameless King",locations={[1017]={67203940},},quest=38685,},
		[92951] = {name="Houndmaster Ely",faction="Alliance",locations={[1017]={47205700},},quest=38712,},
		[92965] = {name="Darkshade",locations={[1018]={43405400},},quest=38767,vignette="Darkshade, Saber Matriarch",},
		[93030] = {name="Ironbranch",locations={[1018]={58403400},},quest=40080,},
		[93166] = {name="Tiptog the Lost",locations={[1017]={-228991240,44004720},},quest=38774,vignette="Lost Ettin",},
		[93205] = {name="Thondrax",locations={[1018]={62204860},},quest=38780,},
		[93371] = {name="Mordvigbjorn",locations={[1017]={72205060},},quest=38837,},
		[93401] = {name="Urgev the Flayer",locations={[1017]={64205160},},quest=38847,},
		[93622] = {name="Mortiferous",locations={[1015]={40404460},},quest=45516,},
		[93654] = {name="Skul'vrax",locations={[1018]={61008800},},quest=38887,vignette="Elindya Featherlight",},
		[93679] = {name="Gathenak the Subjugator",locations={[1018]={49204860},},quest=44070,vignette="Marius & Tehd",},
		[93686] = {name="Jinikki the Puncturer",locations={[1018]={52808740},},quest=38889,vignette="Shivering Ashmaw Cub",},
		[94313] = {name="Daniel \"Boomer\" Vorick",faction="Alliance",locations={[1017]={58207540},},quest=39048,vignette="Sapper Vorick",},
		[94347] = {name="Dread-Rider Cortis",faction="Horde",locations={[1017]={73206140},},quest=43343,},
		[94413] = {name="Isel the Hammer",locations={[1017]={62006040},},quest=39120,},
		[94414] = {name="Kiranys Duskwhisper",locations={[1018]={34405820},},quest=39121,vignette="Haunted Manor",},
		[94485] = {name="Pollous the Fetid",locations={[1018]={66404500},},quest=39130,vignette="Purging the River",},
		[94636] = {name="Kalazzius the Guileful",locations={[1018]={58607220},},hidden=true,},
		[94877] = {name="Brogrul the Mighty",locations={[1024]={55607180},},quest=39235,},
		[95123] = {name="Grelda the Hag",locations={[1018]={65605340},},quest=40126,},
		[95204] = {name="Oubdob da Smasher",locations={[1024]={47007320,49204460},},quest=39435,},
		[95221] = {name="Mad Henryk",locations={[1018]={47205780},},quest=39357,vignette="Old Bear Trap",},
		[95318] = {name="Perrexx",locations={[1018]={61006940},},quest=39596,vignette="Perrexx the Corruptor",},
		[95872] = {name="Skullhat",locations={[1024]={51403180},},quest=39465,vignette="Skywhisker Taskmaster",},
		[96072] = {name="Durguth",locations={[1024]={43807540},},quest=45508,},
		[96410] = {name="Majestic Elderhorn",locations={[1024]={24806620,27006120,44202840},},quest=39646,tameable=true,},
		[96590] = {name="Gurbog da Basher",locations={[1024]={55806140},},quest=40347,},
		[96621] = {name="Mellok, Son of Torok",locations={[1024]={48402740},},quest=40242,},
		[96647] = {name="Earlnoc the Beastbreaker",locations={[1041]={25005460,26006480,27004920,27205980,28008200,28407540,29004240,30205440,32006660,32806100,35004260,36403740,37207100,44006520},},hidden=true,},
		[96997] = {name="Kethrazor",locations={[1045]={47202900},},quest=40251,},
		[97069] = {name="Wrath-Lord Lekos",locations={[1045]={68002800},},quest=40301,},
		[97093] = {name="Shara Felbreath",locations={[1024]={51002580},},quest=39762,},
		[97102] = {name="Ram'Pag",locations={[1024]={52205140},},quest=39766,vignette="Totally Safe Treasure Chest",},
		[97203] = {name="Tenpak Flametotem",locations={[1024]={42004140},},quest=39782,vignette="The Exiled Shaman",},
		[97220] = {name="Arru",locations={[1024]={48805000},[1080]={30407800,32601720,45404300,51004420,55802680},},quest=39784,tameable=true,vignette="Beastmaster Pao'lek",},
		[97326] = {name="Hartli the Snatcher",locations={[1024]={51004820},},quest=39802,},
		[97345] = {name="Crawshuk the Hungry",locations={[1024]={48204060},},quest=39806,},
		[97449] = {name="Bristlemaul",locations={[1018]={83600400},[1024]={38004560},},quest=40405,tameable=true,},
		[97504] = {name="Wraithtalon",locations={[1018]={66603760},},quest=39856,},
		[97517] = {name="Dreadbog",locations={[1018]={60204420},},quest=39858,},
		[97593] = {name="Mynta Talonscreech",locations={[1024]={54204060},},quest=39866,},
		[97630] = {name="Soulthirster",locations={[1022]={28186375},},quest=39870,},
		[97653] = {name="Taurson",locations={[1024]={53805120},},quest=40609,vignette="The Beastly Boxer",},
		[97793] = {name="Flamescale",locations={[1024]={41205800},},quest=39963,vignette="Abandoned Fishing Pole",},
		[97928] = {name="Tamed Coralback",locations={[1024]={43001040},},quest=39994,tameable=true,},
		[97933] = {name="Crab Rider Grmlrml",locations={[1024]={42801020},},quest=39994,},
		[98024] = {name="Luggut the Eggeater",locations={[1024]={50803460},},quest=40406,},
		[98188] = {name="Egyl the Enduring",locations={[1017]={41403340},},quest=40068,},
		[98241] = {name="Lyrath Moonfeather",locations={[1018]={61802980},},quest=40079,},
		[98268] = {name="Tarben",locations={[1017]={54204360,61204360},},quest=40081,},
		[98299] = {name="Bodash the Hoarder",locations={[1024]={36401660},},quest=40084,},
		[98311] = {name="Mrrklr",locations={[1024]={46600700},},quest=40096,vignette="Captured Survivor",},
		[98421] = {name="Kottr Vondyr",locations={[1017]={73404740},},quest=40109,},
		[98503] = {name="Grrvrgull the Conqueror",locations={[1017]={78806120},},quest=40113,},
		[98890] = {name="Slumber",locations={[1024]={41403180},},quest=40175,tameable=true,vignette="Slumbering Bear",},
		[99362] = {name="Kudzilla",locations={[1067]={33408120,37408720},},hidden=true,},
		[99610] = {name="Garvrulg",locations={[1017]={22807380},[1033]={53003020},},quest=40897,},
		[99792] = {name="Elfbane",locations={[1033]={20005620},},quest=41319,},
		[99802] = {name="Arthfael",locations={[1041]={60806440},},hidden=true,},
		[99846] = {name="Raging Earth",locations={[1015]={44203720,52401320},[1018]={45205600},[1024]={47003300},},hidden=true,notes="Shaman",},
		[99886] = {name="Pacified Earth",locations={[1015]={44203700,52401320},[1017]={53606000,65204020},[1018]={45005580,58407340},[1024]={47003260,55206180},},hidden=true,notes="Shaman",},
		[99899] = {name="Vicious Whale Shark",locations={[1033]={76406340,81606040},},quest=44669,},
		[99929] = {name="Flotsam",locations={[1024]={48600820},},quest=41126,},
		[100067] = {name="Hydrannon",locations={[1017]={63803260},},hidden=true,notes="Shaman",},
		[100223] = {name="Vrykul Earthshaper Spirit",locations={[1017]={53606000,65204020},},},
		[100224] = {name="Vrykul Earthmaiden Spirit",locations={[1017]={53406000,65204020},},},
		[100230] = {name="\"Sure-Shot\" Arnie",locations={[1024]={43204760},},quest=40413,vignette="Amateur Hunters",},
		[100231] = {name="Dargok Thunderuin",locations={[1024]={43404740},},quest=40413,vignette="Amateur Hunters",},
		[100232] = {name="Ryael Dawndrifter",locations={[1024]={43204760},},quest=40413,vignette="Amateur Hunters",},
		[100302] = {name="Puck",locations={[1024]={52205860},},quest=40423,vignette="Seemingly Unguarded Treasure",},
		[100303] = {name="Zenobia",locations={[1024]={52405840},},quest=40423,vignette="Seemingly Unguarded Treasure",},
		[100495] = {name="Devouring Darkness",locations={[1024]={54404120},},quest=40414,},
		[100864] = {name="Cora'kar",locations={[1033]={68205820},},quest=41135,},
		[101077] = {name="Sekhan",locations={[1024]={45205580},[1080]={29002340,34202720,35201860,36001020,41200340},},quest=40681,tameable=true,},
		[101411] = {name="Gom Crabbar",locations={[1046]={24203100,35602880,35603400,36401980,41203080},},hidden=true,},
		[101467] = {name="Jaggen-Ra",locations={[1046]={86403760},},hidden=true,},
		[101649] = {name="Frostshard",locations={[1024]={51807980,54407440},},quest=40773,},
		[101660] = {name="Rage Rot",locations={[1067]={17002520,22402300,23803200,24603900,27602400},},hidden=true,},
		[102064] = {name="Torrentius",locations={[1015]={37208380},},quest=44035,},
		[102303] = {name="Lieutenant Strathmar",locations={[1033]={48605660},},quest=40905,},
		[102863] = {name="Bruiser",locations={[1024]={46207380},},quest=41042,tameable=true,vignette="Champion Chomper",},
		[103154] = {name="Hati",locations={[495]={33405820},},hidden=true,notes="Hunter",},
		[103183] = {name="Rok'nash",locations={[1033]={79607260,79806720},},quest=40680,},
		[103214] = {name="Har'kess the Insatiable",locations={[1033]={67807060},},quest=41136,},
		[103223] = {name="Hertha Grimdottir",locations={[1017]={30608260},[1033]={61403960},},quest=43993,},
		[103575] = {name="Reef Lord Raj'his",locations={[1033]={74405660},},quest=44003,},
		[103785] = {name="Well-Fed Bear",locations={[1018]={49204680,59606680,69005940},},tameable=true,hidden=true,notes="Cooking World Quest",},
		[103787] = {name="Baconlisk",locations={[1033]={24204700,39002940,75805020},},tameable=true,hidden=true,notes="Cooking World Quest",},
		[103827] = {name="King Morgalash",locations={[1033]={87206220},},quest=41786,vignette="Sea Giant King",},
		[103841] = {name="Shadowquill",locations={[1033]={16202540},},quest=43996,tameable=true,},
		[103975] = {name="Jade Darkhaven",locations={[1015]={40207660},},quest=43957,},
		[104481] = {name="Ala'washte",locations={[1024]={28005300},},quest=45514,},
		[104484] = {name="Olokk the Shipbreaker",locations={[1024]={33702190},},quest=45511,},
		[104513] = {name="Defilia",locations={[1024]={56804940},},quest=45513,},
		[104517] = {name="Mawat'aki",locations={[1024]={58407140},[1080]={44804280},},quest=45512,},
		[104519] = {name="Colerian",locations={[1033]={23005740},},quest=45503,},
		[104521] = {name="Alteria",locations={[1033]={23005860,25205260},},quest=45504,},
		[104522] = {name="Selenyi",locations={[1033]={23005860,25405240},},quest=45502,},
		[104523] = {name="Shalas'aman",locations={[1018]={52003980},},quest=45500,},
		[104524] = {name="Ormagrogg",locations={[1024]={52205860},},quest=45510,},
		[104698] = {name="Colerian",locations={[1033]={23005740,28004900},},quest=45503,},
		[105547] = {name="Rauren",locations={[1033]={23602580},},quest=43484,},
		[105632] = {name="Broodmother Shu'malis",locations={[1033]={25204420,64405060},},},
		[105728] = {name="Scythemaster Cil'raman",locations={[1033]={23804580},},quest=45505,},
		[105739] = {name="Sanaar",locations={[1033]={19004020,36603280,41803540},},},
		[105899] = {name="Oglok the Furious",locations={[1033]={67405620},},quest=45506,},
		[105938] = {name="Felwing",locations={[1015]={43602460},},quest=42069,vignette="Marius & Tehd",},
		[106351] = {name="Artificer Lothaire",locations={[1033]={33601500},},quest=43717,},
		[106526] = {name="Lady Rivantas",locations={[1033]={35006680},},quest=44675,},
		[106532] = {name="Inquisitor Volitix",locations={[1033]={38007040},},quest=44569,},
		[106990] = {name="Chief Bitterbrine",locations={[1015]={65205640},},quest=42221,},
		[107023] = {name="Nithogg",locations={[1017]={46203180},},quest=44508,},
		[107105] = {name="Broodmother Lizax",locations={[1015]={33204160},},quest=44670,},
		[107113] = {name="Vorthax",locations={[1015]={37004360},},quest=42280,},
		[107127] = {name="Brawlgoth",locations={[1015]={55204580},[1018]={61803820},},quest=42450,},
		[107136] = {name="Houndmaster Stroxis",locations={[1015]={30204840},},quest=42286,},
		[107169] = {name="Horux",locations={[1015]={30204840},},quest=42286,},
		[107170] = {name="Zorux",locations={[1015]={30204840},},quest=42286,},
		[107266] = {name="Commander Soraax",locations={[1015]={27805120},},quest=44673,},
		[107269] = {name="Inquisitor Tivos",locations={[1015]={28205200},},quest=42376,},
		[107327] = {name="Bilebrain",locations={[1015]={29205360},},quest=42417,},
		[107487] = {name="Starbuck",locations={[1017]={54402900},},quest=42437,tameable=true,},
		[107544] = {name="Nithogg",locations={[1017]={46103010},},quest=44508,},
		[107657] = {name="Arcanist Shal'iman",locations={[1015]={34403380},},quest=42505,},
		[107846] = {name="Pinchshank",locations={[1033]={66406700},},quest=43968,tameable=true,},
		[107924] = {name="Darkfiend Tormentor",locations={[1018]={58407340},[1024]={55206180},},},
		[107926] = {name="Hannval the Butcher",locations={[1017]={51607440},},quest=42591,},
		[107960] = {name="Alluvanon",locations={[1015]={33400480},},notes="Shaman",hidden=true,},
		[108136] = {name="The Muscle",locations={[1015]={58607900},},quest=44671,},
		[108255] = {name="Coura, Mistress of Arcana",locations={[1015]={55204880,55476980,56402840,56803660,61202280,61403080,66401780,66602580,67403700},},quest=42699,},
		[108366] = {name="Long-Forgotten Hippogryph",locations={[1015]={37002160,46605360,47206200,48804560,56802580,57003120,59403860,63405400,64403300},},hidden=true,},
		[108541] = {name="Dread Corsair",locations={[1046]={25402980,32603900},},hidden=true,},
		[108543] = {name="Dread Captain Thedon",locations={[1046]={25203120,30803740},},hidden=true,},
		[108678] = {name="Shar'thos",locations={[1018]={55804300},},},
		[108715] = {name="Ol' Eary",locations={[673]={37006080,37006740},},notes="Pirates' Day",hidden=true,},
		[108790] = {name="Den Mother Ylva",locations={[1017]={38206840},},},
		[108822] = {name="Huntress Estrid",locations={[1017]={39406580},},},
		[108823] = {name="Halfdan",locations={[1017]={39406580},},notes="Pet of Estrid",hidden=true,},
		[108827] = {name="Fjorlag, the Grave's Chill",locations={[1017]={68605300},},quest=45507,},
		[108879] = {name="Humongris",locations={[1018]={24007060},},quest=42819,},
		[108885] = {name="Aegir Wavecrusher",locations={[1017]={52002340},},},
		[109015] = {name="Lagertha",locations={[1017]={61407260},},},
		[109054] = {name="Shal'an",locations={[1018]={79808260},[1033]={25804060},},quest=42831,},
		[109113] = {name="Boulderfall, the Eroded",locations={[1017]={30603300},},quest=40067,},
		[109125] = {name="Kathaw the Savage",locations={[1018]={45408360},},quest=42870,},
		[109163] = {name="Captain Dargun",locations={[1022]={70801800},},},
		[109195] = {name="Soulbinder Halldora",locations={[1017]={55202340,55801640,61201740,81400460},},},
		[109281] = {name="Malisandra",locations={[1018]={42207640},},quest=45501,},
		[109317] = {name="Rulf Bonesnapper",locations={[1017]={45807840,47208880,49607060,51808180,52006420,52207620,80401160},},},
		[109318] = {name="Runeseer Sigvid",locations={[1017]={76600940},},},
		[109498] = {name="Xaander",locations={[1024]={52405840},},quest=40423,vignette="Seemingly Unguarded Treasure",},
		[109500] = {name="Jak",locations={[1024]={52205860},},quest=40423,vignette="Seemingly Unguarded Treasure",},
		[109501] = {name="Darkful",locations={[1024]={52405840},},quest=40423,vignette="Seemingly Unguarded Treasure",},
		[109504] = {name="Ragemaw",locations={[1015]={32604860},},quest=44108,},
		[109575] = {name="Valakar the Thirsty",locations={[1015]={58202140},},quest=45515,},
		[109584] = {name="Fjordun",locations={[1015]={66004000},},quest=45499,},
		[109594] = {name="Stormfeather",locations={[1015]={51005780},},quest=45497,},
		[109620] = {name="The Whisperer",locations={[1015]={43200760},},quest=45496,},
		[109630] = {name="Immolian",locations={[1015]={28204860},},quest=45495,},
		[109641] = {name="Arcanor Prime",locations={[1015]={57001100},[1018]={64409920},},quest=45494,},
		[109648] = {name="Witchdoctor Grgl-Brgl",locations={[1018]={23407100},},quest=45493,},
		[109653] = {name="Marblub the Massive",locations={[1015]={33802820},},quest=45492,},
		[109677] = {name="Chief Treasurer Jabrill",locations={[1015]={58407700},},quest=45491,},
		[109692] = {name="Lytheron",locations={[1018]={31605860},},quest=45490,},
		[109702] = {name="Deepclaw",locations={[1015]={55806340},},quest=45489,},
		[109708] = {name="Undergrell Ringleader",locations={[1018]={66806980},[1033]={15202500},},quest=43176,vignette="Undergrell Attack",},
		[109943] = {name="Ana-Mouz",locations={[1033]={31366570},},quest=44501,},
		[109954] = {name="Magister Phaedris",locations={[1033]={42008000},},quest=43348,},
		[109990] = {name="Nylaathria the Forgotten",locations={[1018]={31604780},},quest=45488,},
		[109994] = {name="Stormtalon",locations={[1017]={58002940,60002380},},notes="Mount for Wake the Dragon",},
		[110024] = {name="Mal'Dreth the Corruptor",locations={[1033]={34006040},},quest=43351,vignette="Mal'Dreth the Corrupter",},
		[110340] = {name="Myonix",locations={[1033]={40403340},},quest=43358,tameable=true,},
		[110342] = {name="Rabxach",locations={[1018]={69405740},},quest=45487,},
		[110346] = {name="Aodh Witherpetal",locations={[1018]={59805040},},},
		[110361] = {name="Harbinger of Screams",locations={[1018]={66203860,69805160},},quest=45484,},
		[110363] = {name="Roteye",locations={[1017]={58203400},},quest=43342,},
		[110367] = {name="Ealdis",locations={[1018]={62404280},},quest=45483,},
		[110378] = {name="Drugon the Frostblood",locations={[1024]={58207260},},quest=44503,},
		[110438] = {name="Siegemaster Aedrin",locations={[1033]={37202140},},quest=43369,},
		[110562] = {name="Bahagar",locations={[1018]={45208740},},quest=43446,tameable=true,},
		[110577] = {name="Oreth the Vile",locations={[1033]={24204620},},quest=43449,},
		[110656] = {name="Arcanist Lylandre",locations={[1033]={65405900},},quest=43481,},
		[110726] = {name="Cadraeus",locations={[1017]={33407780},[1033]={57008780,63404200},},quest=43495,},
		[110824] = {name="Tideclaw",locations={[1015]={63601420},[1033]={18606100},},quest=43542,tameable=true,},
		[110832] = {name="Gorgroth",locations={[1033]={27206580},},quest=43992,},
		[110870] = {name="Apothecary Faldren",locations={[1017]={12609900},[1033]={42005660},},quest=43580,},
		[110944] = {name="Guardian Thor'el",locations={[1033]={56405040},},quest=43597,},
		[111007] = {name="Randril",locations={[1033]={49407900},},quest=43602,},
		[111063] = {name="Randril",locations={[1033]={49607920},},quest=43602,},
		[111069] = {name="Saepher",locations={[1033]={49607900},},hidden=true,},
		[111197] = {name="Anax",locations={[1033]={33605140},},quest=43954,},
		[111329] = {name="Matron Hagatha",locations={[1033]={36203380},},quest=43718,},
		[111434] = {name="Sea King Tidross",locations={[1015]={44208540},},quest=44039,},
		[111454] = {name="Bestrix",locations={[1015]={41608860},},quest=43961,},
		[111463] = {name="Bulvinkel",locations={[1017]={73408340},},tameable=true,},
		[111573] = {name="Kosumoth the Hungering",locations={[1096]={45205060},},quest=45479,},
		[111649] = {name="Ambassador D'vwinn",locations={[1033]={54406280},},quest=43794,},
		[111651] = {name="Degren",locations={[1033]={54405600},},quest=43792,vignette="Noble Blademaster",},
		[111653] = {name="Miasu",locations={[1033]={62406340},},quest=43793,},
		[111674] = {name="Cinderwing",locations={[1015]={46807740},},},
		[111939] = {name="Lysanis Shadesoul",locations={[1015]={43408940},},quest=45478,},
		[112497] = {name="Maia the White",locations={[1033]={24403520},},quest=44071,tameable=true,},
		[112636] = {name="Sinister Leyrunner",locations={[1015]={50405200},},quest=44081,vignette="Treacherous Stallions",},
		[112637] = {name="Devious Sunrunner",locations={[1015]={50405200},},quest=44081,vignette="Treacherous Stallions",},
		[112705] = {name="Achronos",locations={[1033]={56007420},},quest=45478,},
		[112756] = {name="Sorallus",locations={[1033]={29208900},},quest=45477,},
		[112757] = {name="Magistrix Vilessa",locations={[1033]={49407940},},quest=45476,},
		[112758] = {name="Auditor Esiel",locations={[1033]={57006740},},quest=45475,},
		[112759] = {name="Az'jatar",locations={[1033]={81206260},},quest=45471,},
		[112760] = {name="Volshax, Breaker of Will",locations={[1033]={49205860},},quest=45474,},
		[112802] = {name="Mar'tura",locations={[1015]={58400860},[1033]={13405340},},quest=44124,tameable=true,},
		[113694] = {name="Pashya",locations={[1033]={60204120,62004680,66205300},},tameable=true,},
		[115732] = {name="Jorvild the Trusted",locations={[1022]={27204220},},quest=46949,},
		[116034] = {name="The Cow King",locations={[34]={49007540},},hidden=true,},
		[116041] = {name="Treasure Goblin",locations={[1014]={},[1015]={46204760,52001120,53405880,57802840,60803600},[1017]={36802680,38004060,41206340,45005460,46004100,59203000,62205400,65804760,73005760},[1018]={47205520,49007720,49408420,54006740,57206180,62207200,63204200,65407700,71004680},[1024]={27804160,37406600,37804060,43205040,45405580,47403280,47801060,49207100,49404340,56805860},[1033]={21402660,23406020,28004560,28606020,30403400,39203840,60004140,72005900},[1080]={37001440},},hidden=true,},
		[116166] = {name="Eye of Gurgh",locations={[1021]={64403020},},quest=47068,},
		[116953] = {name="Corrupted Bonebreaker",locations={[1021]={60205320},},quest=46101,},
		[117086] = {name="Emberfire",locations={[1021]={51204220},},quest=46093,},
		[117089] = {name="Inquisitor Chillbane",locations={[1021]={62003820},},quest=46096,},
		[117090] = {name="Xorogun the Flamecarver",locations={[1021]={48204780},},quest=46100,},
		[117091] = {name="Felmaw Emberfiend",locations={[1021]={39204200},},quest=46095,},
		[117093] = {name="Felbringer Xar'thok",locations={[1021]={56205060,57804040},},quest=46099,},
		[117094] = {name="Malorus the Soulkeeper",locations={[1021]={42404240},},quest=46092,},
		[117095] = {name="Dreadblade Annihilator",locations={[1021]={56802940},},quest=46098,},
		[117096] = {name="Potionmaster Gloop",locations={[1021]={56805620},},quest=46094,},
		[117103] = {name="Felcaller Zelthae",locations={[1021]={88403100},},quest=46102,},
		[117136] = {name="Doombringer Zar'thoz",locations={[1021]={49803620},},quest=46097,},
		[117140] = {name="Salethan the Broodwalker",locations={[1021]={64403100,69603080,70602540},},quest=46091,},
		[117141] = {name="Malgrazoth",locations={[1021]={57402740},},quest=46090,},
		[117239] = {name="Brutallus",locations={[1021]={58402800},},},
		[117303] = {name="Malificus",locations={[1021]={58202820},},},
		[117470] = {name="Si'vash",locations={[1021]={88003300},},quest=46945,},
		[117850] = {name="Simone the Seductress",locations={[1017]={37404020},},notes="Invasion world quest",hidden=true,},
		[118993] = {name="Dreadeye",locations={[1021]={36807780,42008060},},quest=46202,},
		[119629] = {name="Lord Hel'Nurath",locations={[1021]={44405240},},quest=46304,},
		[119718] = {name="Imp Mother Bruva",locations={[1021]={60204500},},quest=46313,},
		[120393] = {name="Siegemaster Voraan",locations={[1135]={56007560},},quest=48627,},
		[120583] = {name="Than'otalion",locations={[1021]={39003220,44205080,49601660,51806520,52004300,57604820,58606220,75402860,82205220},},hidden=true,},
		[120641] = {name="Skulguloth",locations={[1021]={40002660,43603760,45205020,52606400,82602940,82805180},},hidden=true,},
		[120665] = {name="Force-Commander Xillious",locations={[1021]={38802660,42205000,42804060,50804380,54206600,58004760},},hidden=true,},
		[120675] = {name="An'thyna",locations={[1021]={32603240,38203120,39202560,41604640,43404120,45205200,45403580,48804420,50201080,51806680,55201380,58404860,59404240,76202480,81205040,81402800},},hidden=true,},
		[120681] = {name="Fel Obliterator",locations={[1021]={37403000,38602460,42404040,44004580,45205160,49404240,55001480,58404740,82204860},},hidden=true,},
		[120686] = {name="Illisthyndria",locations={[1021]={38603220,44004180,45004920,45403560,50204380,53406680,77202880,83402680},},hidden=true,},
		[120998] = {name="Flllurlokkr",locations={[1021]={39406020},},quest=46951,},
		[121016] = {name="Aqueux",locations={[1021]={53807880},},quest=46953,},
		[121029] = {name="Brood Mother Nix",locations={[1021]={38603440,39602880},},quest=46965,},
		[121037] = {name="Grossir",locations={[1021]={77202320},},quest=46995,},
		[121046] = {name="Brother Badatin",locations={[1021]={78003940},},quest=47001,},
		[121049] = {name="Baleful Knight-Captain",locations={[1021]={36005720,36202400,38004440,42001800,43804240,44807640,46806720,51801040,53804120,54606900,55202640,56803580,57805600,62404140,63202640,65403220,68402660,85405480,86202780},},hidden=true,},
		[121051] = {name="Unstable Abyssal",locations={[1021]={35805720,36002400,38004500,41801820,43604240,44807660,46806720,52001060,53804160,54606880,55202640,56603540,57805600,62204160,63002660,65403180,68802640,73603460,85605420,86402740},},hidden=true,},
		[121056] = {name="Malformed Terrorguard",locations={[1021]={36002420,36005740,38004520,42201800,42805060,43804240,44007480,46206740,51801040,54004100,54404660,54406820,55002840,57003520,57805580,60006200,62404140,63402640,65403200,68802620,74003020,85005440,86402700},},hidden=true,},
		[121068] = {name="Volatile Imp",locations={[1021]={36005740,36202400,38004540,42001800,43804240,44807640,46806720,52201040,54204100,54606880,55204600,55602620,56803520,57605600,62404140,63402640,65403200,68802640,74003020,85605440,86202740},},hidden=true,},
		[121073] = {name="Deranged Succubus",locations={[1021]={36002420,36005720,38004540,42001820,43804240,44807680,46806720,51601160,54204100,54606840,55004600,55202640,56803560,57805580,62404140,63202640,65803240,68802600,74003040,85605400,86202760},},hidden=true,},
		[121077] = {name="Lambent Felhunter",locations={[1021]={36005780,36202380,38004540,41601900,43604240,44807640,47006720,52001040,54004100,54606860,55204600,55402620,56803420,57605600,62604140,63202640,65803240,68802620,74003040,85605440,86002780},},hidden=true,},
		[121088] = {name="Warped Voidlord",locations={[1021]={36005740,36202420,38004520,42001820,43804240,44807660,47006700,52001040,54204120,54406880,55402640,56803520,57805580,62404140,63202640,65803240,68402680,74003040,85605460,86402740},},hidden=true,},
		[121090] = {name="Demented Shivarra",locations={[1021]={36005780,36202440,38004540,42001760,43804240,44807660,46806720,52201040,54204080,54606900,55204600,55402620,56803540,57605580,62404140,63202640,65603220,68802600,74003040,85605440,86202740},},hidden=true,},
		[121092] = {name="Anomalous Observer",locations={[1021]={36002420,36005740,38004540,41801820,43804240,44607640,46806720,52201040,54004100,54606840,55204600,55402620,56403520,57805600,62004220,63202640,65803220,68602640,73003240,85205460,86202740},},hidden=true,},
		[121107] = {name="Lady Eldrathe",locations={[1021]={41401640},},quest=47026,},
		[121108] = {name="Ruinous Overfiend",locations={[1021]={35405740,36202380,37804880,41001800,43204080,44007700,46206740,51801060,53204120,54406780,55402640,56803520,57805580,60204140,61002600,65603220,66204240,68602700,73403480,85005480,86402720},},hidden=true,},
		[121112] = {name="Somber Dawn",locations={[1021]={27006020,32205980},},quest=47028,},
		[121124] = {name="Apocron",locations={[1021]={59206200},},quest=47061,},
		[121134] = {name="Duke Sithizi",locations={[1021]={77402920},},quest=47036,},
		[122838] = {name="Shadowcaster Voruun",locations={[1170]={44607160},},quest=48692,},
		[122899] = {name="Death Metal Knight",locations={[823]={63506650},},quest=47767,},
		[122911] = {name="Commander Vecaya",locations={[1135]={38205840},},quest=48563,},
		[122912] = {name="Commander Sathrenael",locations={[1135]={33207540},},quest=48562,},
		[122947] = {name="Mistress Il'thendra",locations={[1171]={57203380},},quest=49240},
		[122958] = {name="Blistermaw",locations={[1171]={60403820},},quest=49183,},
		[122999] = {name="Gar'zoth",locations={[1171]={53404520},},quest=49241,},
		[123087] = {name="Al'Abas",locations={[1014]={42802420,47203020},},notes="Rogue",hidden=true,},
		[123464] = {name="Sister Subversia",locations={[1135]={52203160},},quest=48565,},
		[123689] = {name="Talestra the Vile",locations={[1135]={54808120},},quest=48628,},
		[124440] = {name="Overseer Y'Beda",locations={[1170]={59203770},},quest=48714,},
		[124775] = {name="Commander Endaxis",locations={[1135]={44805880},},quest=48564,},
		[124804] = {name="Tereck the Selector",locations={[1135]={69205900},},quest=48664,},
		[125388] = {name="Vagath the Betrayed",locations={[1135]={61001980},},quest=48629,},
		[125479] = {name="Tar Spitter",locations={[1135]={70008120},},quest=48665,},
		[125497] = {name="Overseer Y'Sorna",locations={[1170]={58003090},},quest=48716,},
		[125498] = {name="Overseer Y'Morna",locations={[1170]={60402970},},quest=48717,},
		[125820] = {name="Imp Mother Laglath",locations={[1135]={42207000},},quest=48666,},
		[125824] = {name="Khazaduum",locations={[1135]={44400720},},quest=48561,},
		[125951] = {name="Obsidian Deathwarder",locations={[1024]={49108340},},quest=48381,},
		[126040] = {name="Puscilla",locations={[1171]={64002100},},quest=48809,},
		[126115] = {name="Ven'orn",locations={[1171]={63205660},},quest=48811,},
		[126199] = {name="Vrax'thul",locations={[1171]={51603580},},quest=48810,},
		[126208] = {name="Varga",locations={[1171]={64404880},},quest=48812,},
		[126254] = {name="Lieutenant Xakaar",locations={[1171]={61405220},},quest=48813,},
		[126338] = {name="Wrath-Lord Yarez",locations={[1171]={59206500},},quest=48814,},
		[126419] = {name="Naroua",locations={[1135]={70403400},},quest=48667,},
		[126815] = {name="Soultwisted Monstrosity",locations={[1170]={52796704},},quest=48693,},
		[126852] = {name="Wrangler Kravos",locations={[1170]={55705990},},quest=48695,},
		[126860] = {name="Kaara the Pale",locations={[1170]={38705580},},quest=48697,},
		[126862] = {name="Baruut the Bloodthirsty",locations={[1170]={43806020},},quest=48700,},
		[126864] = {name="Feasel the Muffin Thief",locations={[1170]={41301160},},quest=48702,},
		[126865] = {name="Vigilant Thanos",locations={[1170]={36302360},},quest=48703,},
		[126866] = {name="Vigilant Kuro",locations={[1170]={63806460},},quest=48704,},
		[126867] = {name="Venomtail Skyfin",locations={[1170]={33704750},},quest=48705,},
		[126868] = {name="Turek the Lucid",locations={[1170]={39716420},},quest=48706,},
		[126869] = {name="Captain Faruq",locations={[1170]={27202980},},quest=48707,},
		[126885] = {name="Umbraliss",locations={[1170]={35203720},},quest=48708,},
		[126889] = {name="Sorolis the Ill-Fated",locations={[1170]={70404670},},quest=48710,},
		[126896] = {name="Herald of Chaos",locations={[1170]={35505870},},quest=48711,},
		[126898] = {name="Sabuul",locations={[1170]={44204980},},quest=48712,},
		[126899] = {name="Jed'hin Champion Vorusk",locations={[1170]={48504090},},quest=48713,},
		[126900] = {name="Instructor Tarahna",locations={[1170]={61405020},},quest=48718,},
		[126908] = {name="Zul'tan the Numerous",locations={[1170]={64002950},},quest=48719,},
		[126910] = {name="Commander Xethgar",locations={[1170]={56801450},},quest=48720,},
		[126912] = {name="Skreeg the Devourer",locations={[1170]={49700990},},quest=48721,},
		[126913] = {name="Slithon the Last",locations={[1170]={49505280},},quest=48935,},
		[126913] = {name="Slithon the Last",locations={[1170]={49505280},},quest=48935,},
		[126946] = {name="Inquisitor Vethroz",locations={[1171]={59804800},},quest=48815,},
		[127084] = {name="Commander Texlaz",locations={[1171]={81406900},},quest=48816,},
		[127090] = {name="Admiral Rel'var",locations={[1171]={71807200},},quest=48817,},
		[127096] = {name="All-Seer Xanarian",locations={[1171]={75405660},},quest=48818,},
		[127118] = {name="Worldsplitter Skuul",locations={[1171]={50805560,51804940},},quest=48820,},
		[127288] = {name="Houndmaster Kerrax",locations={[1171]={63002480},},quest=48821,},
		[127291] = {name="Watcher Aival",locations={[1171]={52202760},},quest=48822,},
		[127300] = {name="Void Warden Valsuran",locations={[1171]={54602480},},quest=48824,},
		[127323] = {name="Ataxon",locations={[1170]={30304040},},quest=48709,},
		[127376] = {name="Chief Alchemist Munculus",locations={[1171]={61202140},},quest=48865,},
		[127581] = {name="The Many-Faced Devourer",locations={[1171]={54003860},},quest=48966,},
		[127700] = {name="Squadron Commander Vishax",locations={[1171]={84408100},},},
		[127703] = {name="Doomcaster Suprax",locations={[1171]={58801160},},quest=48968,},
		[127705] = {name="Mother Rosula",locations={[1171]={66801740},},quest=48970,},
		[132591] = {name="Ogmot the Mad",locations={[261]={29107440},},quest=50334,},
	})
end
