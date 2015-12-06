K <- 10
V <- 516
M <- 5
N <- 1097

alpha <- c(0.1525477268836902, 0.04398208961192217, 0.015031682621831305, 0.220150985854987, 0.2603149081744348, 0.10052611704512635, 0.020883060535786844, 0.01543329396089042, 0.0028141993871067237, 0.16831593592422422)

beta <- c(0.0001286519098028737, 0.00463938525128483, 0.0008736096855664075, 0.00010940937428593311, 0.0006414194658597522, 0.0010618636300270981, 0.0016366415048963447, 0.004570606688776243, 0.00041074428534403036, 0.0022753868107976078, 2.143061991143849e-05, 0.0033359769781424807, 0.002141861959294711, 0.0024124774853818425, 0.000175874282857984, 0.0021373141058253953, 0.0011500167079545479, 0.0027168438300250617, 0.0006904031393070517, 0.0016831550698853002, 0.00033318073596933314, 0.0005143139924787039, 0.0020386483239557152, 5.940832358279021e-05, 0.0011381886536141626, 0.0002581199155311555, 0.0017759161929782137, 0.0009251477681999436, 0.0020070968792238785, 0.0063404554411485205, 0.0007365240150033999, 0.0019366422824784735, 0.0003160026681615503, 0.0011459073369132205, 0.0010912421294066133, 0.0030201949795131897, 0.0014153475044141044, 0.007124854248426144, 0.0004926541914477056, 0.0029614061215585577, 0.0024189010319348825, 0.0027061640022884776, 7.668674827488443e-05, 0.0018010381197840642, 0.0029441188992589363, 0.00011803392903568536, 0.0018064730656625928, 0.002039452103593623, 0.0013196584770388436, 0.000829932726322076, 0.0015875431740994912, 0.0033195999659034097, 0.0018768344986357308, 0.0011041397112392356, 0.004315120950156787, 0.0034063714163210194, 0.006831607719331388, 0.00032474318305968905, 0.008207910055472457, 0.0019684315170016443, 0.0013737372816298335, 0.0019155479764979165, 0.0024969576756634334, 0.003392012648186971, 0.00010636216790615055, 0.0002262196823951011, 0.00574440630866456, 0.0008961758312598073, 0.0010692907405320479, 0.0014513260811878643, 0.0007415609568137683, 0.00046801429377422695, 0.0017766625811489222, 0.0017959100594664244, 4.934666370279976e-05, 0.008179655416064326, 0.0007198189690709792, 0.00026796952564280495, 0.0033572009733409828, 0.00019569587238639467, 0.0020437219848551936, 0.0028907041990467947, 0.0005049788734019138, 0.0027131687756456013, 0.004086705472526318, 0.001282117025470299, 0.0010327790876100988, 0.0003931654107990864, 0.0009107787529939085, 0.00436327385390748, 0.00420044942976438, 3.198467630943823e-05, 0.0009395530406033632, 0.0019431426173366925, 0.0008720616404182964, 0.0039333868448618555, 0.0021551369862768577, 0.0017517671785128685, 0.0021440431890213992, 0.007713349784309056, 0.000567750707599401, 0.007426589667725041, 0.0021842568779347894, 0.00022574789066477142, 0.0005827365056591781, 0.0024535684239547755, 0.0028760639731683, 0.0010786436585618028, 0.001613764974665888, 0.0008686272378509904, 0.0011902935077942442, 0.0005460394321966267, 0.001144727308712913, 0.003707458727307426, 0.000691125107478556, 0.0005209252352820315, 0.0004892564781489966, 0.005607670556690507, 0.002309379456243358, 0.0006254558986818664, 0.0007962178298106874, 0.0009439370692568971, 0.0023495668783434244, 0.0013555761545319266, 0.0028820071201098706, 0.0029617232376344883, 0.0009722800259875618, 0.00015093756456095565, 0.004739613823692215, 7.146741906240739e-05, 0.0016241121128612527, 0.003694397841642169, 0.0009581497145132021, 0.00017674048882044464, 0.013208545322848804, 0.004247901268099642, 0.002990324486446125, 0.0012322043678989632, 0.004263507933062306, 0.00876769502548286, 0.0007963470492686314, 0.003606182083632434, 4.851421623105414e-05, 0.00016619491643686887, 0.0023996189794408874, 0.0010351039484907767, 7.385094046239585e-05, 5.0160228300346226e-05, 0.003881152405230332, 0.0004157740683281776, 0.009482771532038406, 0.001206692340437863, 0.003151938793689229, 0.006384277043637035, 0.0026928585467067673, 0.0066504647057012535, 0.006563470163910032, 0.0026534317391499786, 0.004358753291184453, 0.001927647079803015, 0.0011532783790478122, 0.0007985087111767974, 0.0014248911941965891, 0.00018643879584732655, 0.0022292370003331773, 0.0017018277406529708, 0.0019407697817015194, 0.0015917741437684377, 0.003681300971755144, 0.003725835246714863, 0.0006882482746321812, 0.002310675385941776, 0.0005528695550559288, 0.00011136226557762885, 0.0011331014937522668, 0.0010400126232963055, 0.0012768089153787426, 0.000603733457580247, 0.0005211524083355848, 0.0029273851258201965, 0.0005709814146966511, 0.0013142291238157887, 0.003835955510793765, 0.003030617341756581, 0.00046114915310074893, 0.0016320070729938941, 0.0004772386895543362, 0.0019722640113326037, 0.00029485032733417434, 0.0021150923626912775, 0.0002497224883843068, 0.00076900687931471, 0.0021004780789556947, 0.000954565791840915, 0.0025904572319112576, 0.008578767545332775, 0.0008161605786044247, 0.0017280436779180143, 0.000245642057215464, 0.015074603328255061, 0.00039695542542631836, 0.00013125030437111777, 0.00038883673723901, 0.0060774874363347655, 0.0019341718435740836, 0.0004665201023770276, 0.0007491488923143513, 0.00013324809896772882, 0.0006757394388921126, 0.0007426063805259414, 0.004095663659950451, 0.0007207100777720868, 0.004116994375683033, 0.0003848065505204965, 0.001355944133607753, 0.0014673460027894046, 0.0006746896098780853, 0.0009854496384047679, 0.0011338809975560752, 0.002151169750250735, 0.0017435815705960905, 0.0004642072059386869, 0.00165168193211103, 0.0014076770776704816, 0.0020207456506574264, 0.0010047601314030375, 0.0030110817690582824, 4.534021897831127e-05, 0.0013853127407704338, 0.0009041308592597032, 0.0009600866627257591, 0.0023624630463992234, 0.001873276045670826, 0.0009781272198482332, 0.00045349971164401455, 0.003933798724518559, 0.005032751464879783, 0.0021231657898913253, 0.005169436889304845, 0.0004139277659231485, 0.002050136842866145, 0.00020682323180694386, 0.002638003333574791, 0.0022644449552369768, 0.0007728955233674108, 0.0012144604524492732, 0.0007280093636981248, 0.0004111131203075206, 0.0015289627658529434, 0.002093134974618462, 0.00039455019874450053, 0.00707735597740118, 0.0013884385003373214, 0.00020062863907122433, 0.0025974495285952326, 0.0030823638321061373, 0.0001908593674599214, 0.0003200000210996504, 0.00028076268526499855, 0.0017276199487569666, 0.00032331508434363924, 0.000444265887750455, 0.0019627248339577617, 0.004652281394214451, 0.003423362971395722, 0.0013749886326583827, 0.000814107872974815, 0.0006916233649619203, 0.0008185360047692021, 0.0004657984398982055, 0.0020812818596400713, 0.0005923913999784911, 0.00013807112514143102, 0.0006276594782594614, 1.8907793211492458e-05, 0.0016849425453789634, 0.003207415145540293, 0.003615657923760425, 0.00531458584899762, 0.0025965339736320594, 0.005424716985358341, 0.0020902652456574545, 0.002808208637063679, 0.0004192746558751642, 0.0007378521250885393, 0.0026593352417920665, 0.0009285459818974063, 0.0015830130213199804, 0.002251685771488756, 8.891561914386505e-05, 0.0002446187098631346, 0.0027381289462130687, 0.005065231351860508, 0.0014870384036849884, 0.00203631491672247, 0.0018187328624257582, 0.013318383592061746, 1.17980522507963e-05, 0.0024055194562604015, 0.014391398436366037, 1.7358580850041983e-05, 0.001007843757071495, 0.0023886863563751474, 1.0868414503089502e-05, 3.902482485246355e-05, 0.0013607849150018261, 0.00019874497480980362, 0.003075149811730744, 0.00021016563430979371, 0.001518759079726994, 0.0012648188509148096, 0.00038533620488189033, 9.839103427563889e-05, 0.0013439031965817884, 0.0012506337305497515, 0.0017014709008335703, 0.002591883600311179, 0.00040255859916363805, 0.0001224819925267104, 0.0020261411662430727, 0.001182488188029306, 0.002987691545176327, 0.0002096487108405958, 0.0017832429655823042, 0.0014545170092513237, 0.002096653157839226, 0.0003504825688135674, 0.002558920992973756, 0.0006519983872628705, 0.0018300294357376835, 0.0008163737492823212, 0.0012085295785235946, 0.0021840742544331814, 0.0014290720663565394, 0.00010715428681809537, 0.00012911201205865902, 0.0005976739876766628, 0.002473682927957016, 0.0005937742370397446, 3.3519938047511927e-06, 0.0018856220591283199, 0.0027762503342615916, 0.0010862957385393097, 0.001574636091314312, 0.002523301039132188, 0.0024678518102598072, 0.00046715760091135957, 0.0006591783089706162, 0.0010577333948307097, 0.004115562117929837, 0.001111641173469869, 0.0007256838029783306, 0.00024402484112179197, 0.00035026442735830064, 0.0032999285312698924, 0.0029215391285651454, 0.0025351563930620987, 0.0005779422060986375, 0.0002365255681773801, 0.004184006225993281, 0.0019275152053849925, 0.0009091202908647228, 0.0024136458409376596, 0.00014566824163690976, 0.006857275448091633, 0.008914708573085026, 0.00028904336008281437, 0.0033193933158191732, 0.0012584421110302146, 0.004813008836893138, 0.00014006258366369337, 0.0056929646309916765, 0.002622878067220016, 0.0028249494237116797, 0.0012023878983813347, 0.005115304427109138, 0.0014449687867131022, 0.00012574163493946555, 0.0019152026669070083, 0.00035925883107858567, 0.0008938824408006473, 0.00028901058573180195, 0.005326694931396689, 0.0010535781244368628, 1.2687972154920223e-05, 0.00014232185864676978, 0.00031648978331760076, 0.0014326587303784327, 0.0007785456971828095, 0.0008059954535439056, 0.001634842760778286, 0.003096058970571212, 0.0019663517429819154, 9.308487092301046e-05, 0.0007180121997467648, 0.0003603961508482806, 0.001970798108537613, 0.0014425520706305484, 0.0003621396469562278, 0.0018637524905076796, 0.0006952345466486802, 0.0006272567565316895, 0.004483875350242731, 0.001958593646226304, 0.0010957604177894453, 0.003136216944396193, 0.0023547016599255012, 0.0008812041165832677, 0.001915755722040625, 0.00020163624627986073, 0.000672695471581936, 0.010814011348903748, 0.0027478228092383144, 0.00531888045330722, 0.00490738228434456, 0.0001324128520969546, 0.00130520481198625, 0.0020262817603411173, 0.0009704728184062765, 0.0015321499782665238, 0.0048947184986712225, 1.3796640403765207e-05, 0.0008660830139091472, 0.0002752348583667737, 0.0004218115231380722, 0.003491035828509122, 0.001350894329121324, 0.0014143852482382691, 0.0013746202420917206, 0.0025696686652518634, 0.005066858214600292, 0.0010821176528766048, 0.0015486563563480258, 0.0002534058716940198, 7.639452056589256e-05, 0.0016398564493000395, 0.0007871883229693593, 0.005743622331157949, 0.00125875421413671, 0.001013790446934671, 0.0016927147480949537, 0.0032343615836240825, 0.0009756045531155647, 0.0030041308283900864, 0.0005319867733003402, 0.0011203769343615375, 0.0011102507151225973, 0.0016970807460801017, 0.0017491893044298285, 0.0010439688889743834, 0.0011250066440805597, 0.002927794494774364, 0.0007980701998621801, 0.0018608728287002269, 0.0033661791967431244, 8.955322640837546e-05, 0.0005208446115047529, 0.003265434600783035, 0.00625048767397379, 0.001382979774654392, 0.00023482029625515558, 0.0014712121469061974, 0.0006636096479802218, 0.0009369336923077417, 0.002388347869252863, 0.0009548564570758691, 3.23654477898573e-05, 0.00028334902950605706, 0.0005658740800304107, 0.00231456881257373, 0.0014855368426144448, 0.0043008164885847576, 0.0011024147578337518, 0.001431601307724448, 0.002467298032525918, 0.0027454273319674634, 0.001149876421455721, 0.0006790514791359905, 0.0022460600071594556, 0.0007238765852128795, 0.0006592885692299748, 0.004369210018637392, 0.0005209275332066443, 0.004321148437867953, 0.0003715007485838122, 0.0020327126172994744, 0.0027913302519366884, 0.00149161281772756, 0.0024526678161935498, 0.00032748971180437486, 0.0038204124932394107, 0.005309685975794622, 3.1956116222155843e-06, 7.892105042380483e-05, 0.000667358732640801, 0.0010807623315720147, 0.0012273707863272657, 0.00019900125268444558, 0.00037330712960771667, 0.00023959370284592664, 0.0015715291696540476, 0.002638254493419978, 0.0015349833516082841, 0.000550703034977522, 0.005771999080209705, 0.004584642464025806, 0.0016511578694078284, 0.0029331608500614698, 0.00017784474773479078, 0.0016474279403833056, 0.0018136197736479598, 0.007075741458226905, 0.00033734509996049823, 0.002106653323329959, 0.0013330674124996246, 0.0008963941971084058)

w <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 16, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 26, 87, 88, 89, 90, 91, 92, 93, 94, 35, 36, 34, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 107, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 72, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 144, 152, 153, 154, 155, 156, 44, 45, 46, 157, 158, 151, 159, 160, 136, 137, 138, 108, 161, 162, 163, 164, 165, 9, 166, 27, 167, 150, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 58, 178, 179, 56, 180, 181, 182, 107, 108, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 186, 202, 203, 204, 205, 35, 206, 207, 208, 209, 10, 11, 210, 211, 212, 172, 213, 17, 18, 19, 20, 21, 22, 214, 215, 216, 217, 218, 219, 29, 30, 31, 32, 16, 33, 34, 35, 36, 37, 38, 39, 220, 221, 222, 223, 224, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 225, 226, 28, 227, 99, 228, 154, 155, 229, 230, 231, 232, 233, 234, 235, 236, 100, 116, 188, 189, 237, 238, 239, 240, 241, 242, 243, 33, 34, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 122, 123, 124, 255, 256, 257, 258, 259, 241, 242, 114, 260, 261, 146, 262, 263, 264, 138, 108, 265, 266, 267, 268, 269, 270, 225, 271, 272, 273, 73, 5, 6, 274, 275, 79, 276, 156, 44, 45, 46, 157, 158, 168, 169, 170, 277, 127, 128, 278, 279, 268, 81, 280, 281, 82, 282, 78, 283, 284, 38, 113, 114, 285, 286, 287, 288, 22, 289, 3, 4, 290, 291, 292, 147, 148, 149, 293, 294, 295, 296, 297, 22, 289, 298, 299, 300, 301, 302, 303, 304, 253, 305, 133, 260, 306, 153, 154, 155, 307, 308, 309, 310, 311, 289, 312, 291, 289, 298, 313, 314, 315, 121, 316, 205, 35, 36, 34, 95, 160, 68, 69, 317, 92, 237, 238, 239, 318, 319, 320, 321, 173, 322, 323, 114, 260, 324, 116, 117, 325, 326, 327, 328, 329, 330, 42, 331, 230, 332, 333, 334, 172, 213, 33, 335, 336, 337, 338, 339, 340, 12, 341, 342, 193, 245, 189, 237, 343, 32, 344, 345, 346, 347, 348, 349, 350, 4, 290, 291, 214, 97, 98, 351, 7, 8, 9, 10, 11, 210, 211, 212, 172, 213, 17, 18, 19, 20, 352, 353, 354, 355, 356, 166, 27, 28, 29, 30, 31, 32, 16, 33, 34, 35, 357, 358, 171, 50, 359, 41, 360, 361, 362, 363, 364, 365, 366, 49, 50, 51, 52, 53, 54, 55, 56, 57, 225, 226, 28, 227, 351, 357, 287, 367, 368, 369, 370, 371, 99, 152, 261, 146, 200, 201, 372, 373, 153, 286, 374, 375, 376, 140, 377, 82, 378, 379, 251, 252, 253, 305, 344, 322, 323, 243, 33, 335, 380, 178, 381, 242, 243, 382, 374, 383, 218, 219, 227, 99, 100, 101, 102, 103, 104, 105, 106, 107, 384, 29, 385, 170, 386, 387, 197, 198, 199, 388, 28, 389, 244, 390, 391, 392, 393, 296, 394, 395, 396, 397, 241, 242, 114, 260, 306, 261, 135, 136, 137, 138, 6, 7, 8, 9, 10, 11, 210, 211, 212, 172, 213, 17, 18, 19, 20, 21, 22, 214, 97, 338, 398, 399, 400, 141, 401, 14, 15, 16, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 402, 403, 404, 348, 349, 405, 406, 407, 408, 298, 75, 76, 77, 78, 79, 80, 409, 410, 411, 255, 412, 413, 273, 414, 354, 69, 317, 92, 93, 94, 35, 36, 34, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 285, 286, 374, 375, 415, 119, 120, 121, 122, 41, 315, 416, 417, 418, 419, 72, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 420, 421, 234, 235, 236, 145, 146, 147, 148, 149, 150, 151, 159, 422, 298, 75, 238, 156, 44, 45, 46, 157, 158, 151, 159, 160, 136, 137, 423, 424, 303, 304, 425, 83, 84, 426, 427, 428, 429, 430, 109, 365, 366, 49, 431, 432, 208, 209, 10, 433, 137, 128, 278, 279, 238, 156, 434, 435, 436, 273, 129, 437, 98, 351, 36, 37, 438, 182, 419, 278, 279, 343, 439, 440, 441, 442, 443, 444, 445, 362, 363, 446, 447, 353, 320, 321, 448, 285, 449, 450, 451, 452, 453, 454, 35, 36, 455, 456, 170, 457, 458, 317, 92, 237, 238, 239, 240, 459, 274, 460, 461, 462, 117, 419, 463, 186, 187, 117, 464, 465, 65, 213, 17, 466, 222, 362, 467, 332, 468, 469, 185, 328, 470, 374, 375, 471, 472, 339, 473, 474, 475, 284, 438, 245, 189, 190, 191, 476, 477, 478, 479, 120, 480, 349, 350, 4, 290, 406, 481, 101, 102, 482, 11, 483, 197, 484, 485, 486, 487, 488, 489, 490, 491, 132, 133, 134, 492, 493, 131, 494, 349, 350, 495, 496, 497, 110, 371, 351, 485, 450, 124, 296, 498, 499, 130, 400, 141, 401, 500, 331, 501, 502, 99, 145, 408, 312, 503, 470, 287, 367, 368, 504, 505, 395, 396, 246, 506, 407, 146, 262, 402, 403, 388, 167, 507, 333, 508, 509, 211, 212, 172, 213, 17, 18, 19, 20, 21, 22, 214, 97, 338, 510, 226, 28, 29, 385, 511, 288, 512, 513, 34, 35, 36, 37, 38, 39, 220, 221, 222, 223, 514, 108, 109, 365, 366, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 94, 95, 199, 147, 272, 327, 328, 329, 450, 515, 516, 233, 234, 235, 236)

doc <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)

