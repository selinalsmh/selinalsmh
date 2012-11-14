local __, ns = ...

-- http://www.wowhead.com/items=2?filter=qu=2:3:4;cr=8:161;crs=2:1;crv=0:0
-- http://www.wowhead.com/items=4.1?filter=qu=2:3:4;cr=8:161;crs=2:1;crv=0:0
-- http://www.wowhead.com/items=4.2?filter=qu=2:3:4;cr=8:161;crs=2:1;crv=0:0
-- http://www.wowhead.com/items=4.3?filter=qu=2:3:4;cr=8:161;crs=2:1;crv=0:0
-- http://www.wowhead.com/items=4.4?filter=qu=2:3:4;cr=8:161;crs=2:1;crv=0:0
-- http://www.wowhead.com/items=4?filter=qu=2:3:4;ty=-3:-6:-5:11:-2:-7:-4:6:-8;cr=8:161;crs=2:1;crv=0:0


local notDisenchantable = {
	-- Weapons
	['64377'] = true,
	['64489'] = true,
	['64880'] = true,
	['64885'] = true,
	['62454'] = true,
	['62455'] = true,
	['62456'] = true,
	['62457'] = true,
	['62458'] = true,
	['62459'] = true,
	['62460'] = true,
	['68740'] = true,
	['49888'] = true,
	['49497'] = true,
	['49301'] = true,
	['64460'] = true,
	['44173'] = true,
	['44174'] = true,
	['44191'] = true,
	['44192'] = true,
	['44193'] = true,
	['44199'] = true,
	['44244'] = true,
	['44245'] = true,
	['44249'] = true,
	['44250'] = true,
	['44050'] = true,
	['44051'] = true,
	['44052'] = true,
	['44053'] = true,
	['44108'] = true,
	['44118'] = true,
	['44166'] = true,
	['44187'] = true,
	['44214'] = true,
	['44241'] = true,
	['38454'] = true,
	['38455'] = true,
	['38456'] = true,
	['38457'] = true,
	['38460'] = true,
	['38461'] = true,
	['38464'] = true,
	['38465'] = true,
	['29115'] = true,
	['29130'] = true,
	['29133'] = true,
	['29137'] = true,
	['29138'] = true,
	['29166'] = true,
	['29167'] = true,
	['29185'] = true,
	['34665'] = true,
	['34666'] = true,
	['34667'] = true,
	['34670'] = true,
	['34671'] = true,
	['34672'] = true,
	['34673'] = true,
	['34674'] = true,
	['29121'] = true,
	['29124'] = true,
	['29125'] = true,
	['29151'] = true,
	['29152'] = true,
	['29153'] = true,
	['29155'] = true,
	['29156'] = true,
	['29165'] = true,
	['29171'] = true,
	['29175'] = true,
	['29182'] = true,
	['30830'] = true,
	['30832'] = true,
	['29456'] = true,
	['29457'] = true,
	['25835'] = true,
	['25836'] = true,
	['25823'] = true,
	['25825'] = true,
	['77549'] = true,
	['77550'] = true,
	['77551'] = true,
	['77552'] = true,
	['77553'] = true,
	['77554'] = true,
	['77555'] = true,
	['77556'] = true,
	['77557'] = true,
	['77558'] = true,
	['77559'] = true,
	['77560'] = true,
	['77561'] = true,
	['77562'] = true,
	['77563'] = true,
	['77564'] = true,
	['77565'] = true,
	['77566'] = true,
	['77567'] = true,
	['77568'] = true,
	['77569'] = true,
	['77570'] = true,
	['77571'] = true,
	['77572'] = true,
	['77573'] = true,
	['77574'] = true,
	['77575'] = true,
	['77576'] = true,
	['77577'] = true,
	['77578'] = true,
	['77579'] = true,
	['77580'] = true,
	['77581'] = true,
	['77582'] = true,
	['77583'] = true,
	['77584'] = true,
	['77585'] = true,
	['77586'] = true,
	['77587'] = true,
	['77588'] = true,
	['38632'] = true,
	['38633'] = true,
	['21392'] = true,
	['21395'] = true,
	['21398'] = true,
	['21401'] = true,
	['21404'] = true,
	['21407'] = true,
	['21410'] = true,
	['21413'] = true,
	['21416'] = true,
	['38707'] = true,
	['11290'] = true,
	['11289'] = true,
	['45858'] = true,
	['11288'] = true,
	['28164'] = true,
	['11287'] = true,
	['83260'] = true,
	['83261'] = true,
	['83262'] = true,
	['83263'] = true,
	['83264'] = true,
	['83265'] = true,
	['83266'] = true,
	['83267'] = true,
	['83268'] = true,
	['83269'] = true,
	['83270'] = true,
	['83271'] = true,
	['83274'] = true,
	['83275'] = true,
	['82706'] = true,
	['82707'] = true,
	['82708'] = true,
	['82709'] = true,
	['82710'] = true,
	['82711'] = true,
	['82712'] = true,
	['82713'] = true,
	['82714'] = true,
	['82715'] = true,
	['82716'] = true,
	['82717'] = true,
	['82720'] = true,
	['82721'] = true,
	['81671'] = true,
	['81672'] = true,
	['81673'] = true,
	['81674'] = true,
	['81675'] = true,
	['81676'] = true,
	['81677'] = true,
	['81678'] = true,
	['81679'] = true,
	['81680'] = true,
	['81681'] = true,
	['81682'] = true,
	['81685'] = true,
	['81686'] = true,
	['84661'] = true,
	['83260'] = true,
	['83261'] = true,
	['83262'] = true,
	['83263'] = true,
	['83264'] = true,
	['83265'] = true,
	['83266'] = true,
	['83267'] = true,
	['83268'] = true,
	['83269'] = true,
	['83270'] = true,
	['83271'] = true,
	['83274'] = true,
	['83275'] = true,
	['82706'] = true,
	['82707'] = true,
	['82708'] = true,
	['82709'] = true,
	['82710'] = true,
	['82711'] = true,
	['82712'] = true,
	['82713'] = true,
	['82714'] = true,
	['82715'] = true,
	['82716'] = true,
	['82717'] = true,
	['82720'] = true,
	['82721'] = true,
	['81671'] = true,
	['81672'] = true,
	['81673'] = true,
	['81674'] = true,
	['81675'] = true,
	['81676'] = true,
	['81677'] = true,
	['81678'] = true,
	['81679'] = true,
	['81680'] = true,
	['81681'] = true,
	['81682'] = true,
	['81685'] = true,
	['81686'] = true,
	['84661'] = true,

	-- Cloth
	['30847'] = true,
	['20406'] = true,
	['20407'] = true,
	['20408'] = true,
	['28155'] = true,
	['22986'] = true,
	['22991'] = true,
	['83158'] = true,
	['83162'] = true,
	['83167'] = true,
	['83171'] = true,
	['83176'] = true,
	['83180'] = true,
	['83185'] = true,
	['83189'] = true,
	['83194'] = true,
	['83198'] = true,
	['83203'] = true,
	['83207'] = true,
	['83212'] = true,
	['83216'] = true,
	['83221'] = true,
	['83225'] = true,
	['82614'] = true,
	['82618'] = true,
	['82623'] = true,
	['82627'] = true,
	['82632'] = true,
	['82636'] = true,
	['82641'] = true,
	['82645'] = true,
	['82650'] = true,
	['82654'] = true,
	['82659'] = true,
	['82663'] = true,
	['82668'] = true,
	['82672'] = true,
	['82677'] = true,
	['82681'] = true,
	['81579'] = true,
	['81583'] = true,
	['81588'] = true,
	['81592'] = true,
	['81597'] = true,
	['81601'] = true,
	['81606'] = true,
	['81610'] = true,
	['81615'] = true,
	['81619'] = true,
	['81624'] = true,
	['81628'] = true,
	['81633'] = true,
	['81637'] = true,
	['81642'] = true,
	['81646'] = true,
	['83158'] = true,
	['83162'] = true,
	['83167'] = true,
	['83171'] = true,
	['83176'] = true,
	['83180'] = true,
	['83185'] = true,
	['83189'] = true,
	['83194'] = true,
	['83198'] = true,
	['83203'] = true,
	['83207'] = true,
	['83212'] = true,
	['83216'] = true,
	['83221'] = true,
	['83225'] = true,
	['82614'] = true,
	['82618'] = true,
	['82623'] = true,
	['82627'] = true,
	['82632'] = true,
	['82636'] = true,
	['82641'] = true,
	['82645'] = true,
	['82650'] = true,
	['82654'] = true,
	['82659'] = true,
	['82663'] = true,
	['82668'] = true,
	['82672'] = true,
	['82677'] = true,
	['82681'] = true,
	['81579'] = true,
	['81583'] = true,
	['81588'] = true,
	['81592'] = true,
	['81597'] = true,
	['81601'] = true,
	['81606'] = true,
	['81610'] = true,
	['81615'] = true,
	['81619'] = true,
	['81624'] = true,
	['81628'] = true,
	['81633'] = true,
	['81637'] = true,
	['81642'] = true,
	['81646'] = true,
	['70118'] = true,
	['62364'] = true,
	['62386'] = true,
	['62450'] = true,
	['62441'] = true,
	['62356'] = true,
	['62406'] = true,
	['62424'] = true,
	['44200'] = true,
	['44256'] = true,
	['44180'] = true,
	['44202'] = true,
	['44302'] = true,
	['44104'] = true,
	['44116'] = true,
	['44196'] = true,
	['44061'] = true,
	['44062'] = true,
	['29117'] = true,
	['29129'] = true,
	['29174'] = true,
	['30836'] = true,
	['35328'] = true,
	['35329'] = true,
	['35330'] = true,
	['35331'] = true,
	['35332'] = true,
	['35333'] = true,
	['35334'] = true,
	['35335'] = true,
	['35336'] = true,
	['35337'] = true,
	['35338'] = true,
	['35339'] = true,
	['35340'] = true,
	['35341'] = true,
	['35342'] = true,
	['35343'] = true,
	['35344'] = true,
	['35345'] = true,
	['35346'] = true,
	['35347'] = true,
	['35464'] = true,
	['35465'] = true,
	['35466'] = true,
	['35467'] = true,
	['29122'] = true,
	['29183'] = true,
	['64643'] = true,
	['77678'] = true,
	['77679'] = true,
	['77682'] = true,
	['77692'] = true,
	['77694'] = true,
	['77695'] = true,
	['77709'] = true,
	['77710'] = true,
	['77712'] = true,
	['77886'] = true,
	['77889'] = true,
	['77890'] = true,
	['77899'] = true,
	['77900'] = true,
	['77901'] = true,
	['77917'] = true,
	['77919'] = true,
	['77920'] = true,
	['77778'] = true,
	['77779'] = true,
	['77780'] = true,
	['77784'] = true,
	['77795'] = true,
	['77796'] = true,
	['77800'] = true,
	['77801'] = true,
	['77844'] = true,
	['77845'] = true,
	['77846'] = true,
	['77850'] = true,
	['77680'] = true,
	['77681'] = true,
	['77683'] = true,
	['77690'] = true,
	['77691'] = true,
	['77693'] = true,
	['77708'] = true,
	['77711'] = true,
	['77713'] = true,
	['77887'] = true,
	['77888'] = true,
	['77891'] = true,
	['77898'] = true,
	['77902'] = true,
	['77903'] = true,
	['77916'] = true,
	['77918'] = true,
	['77921'] = true,
	['77777'] = true,
	['77781'] = true,
	['77782'] = true,
	['77785'] = true,
	['77797'] = true,
	['77798'] = true,
	['77799'] = true,
	['77802'] = true,
	['77847'] = true,
	['77848'] = true,
	['77851'] = true,
	['77852'] = true,
	['77724'] = true,
	['77725'] = true,
	['77728'] = true,
	['77729'] = true,
	['77732'] = true,
	['77733'] = true,
	['77773'] = true,
	['77783'] = true,
	['77803'] = true,
	['77804'] = true,
	['77843'] = true,
	['77849'] = true,
	['77614'] = true,
	['77615'] = true,
	['77616'] = true,
	['77617'] = true,
	['77618'] = true,
	['77619'] = true,
	['77620'] = true,
	['77627'] = true,
	['77628'] = true,
	['77629'] = true,
	['77630'] = true,
	['77631'] = true,
	['77632'] = true,
	['77647'] = true,
	['77648'] = true,
	['77649'] = true,
	['77650'] = true,
	['77651'] = true,
	['77652'] = true,
	['77770'] = true,
	['77771'] = true,
	['77772'] = true,
	['77774'] = true,
	['77775'] = true,
	['77776'] = true,
	['77786'] = true,
	['77789'] = true,
	['77790'] = true,
	['77791'] = true,
	['77792'] = true,
	['77793'] = true,
	['77794'] = true,
	['77837'] = true,
	['77838'] = true,
	['77839'] = true,
	['77840'] = true,
	['77841'] = true,
	['77842'] = true,
	['77787'] = true,
	['77788'] = true,
	['33292'] = true,
	['86566'] = true,
	['86566'] = true,

	-- Leather
	['70114'] = true,
	['70122'] = true,
	['62417'] = true,
	['62420'] = true,
	['62431'] = true,
	['62433'] = true,
	['62358'] = true,
	['62381'] = true,
	['62446'] = true,
	['62374'] = true,
	['62404'] = true,
	['62405'] = true,
	['62425'] = true,
	['62426'] = true,
	['44179'] = true,
	['44194'] = true,
	['44258'] = true,
	['44181'] = true,
	['44203'] = true,
	['44297'] = true,
	['44303'] = true,
	['44106'] = true,
	['44170'] = true,
	['44190'] = true,
	['44117'] = true,
	['44054'] = true,
	['44055'] = true,
	['29116'] = true,
	['29131'] = true,
	['29141'] = true,
	['29142'] = true,
	['29147'] = true,
	['29148'] = true,
	['35356'] = true,
	['35357'] = true,
	['35358'] = true,
	['35359'] = true,
	['35360'] = true,
	['35361'] = true,
	['35362'] = true,
	['35363'] = true,
	['35364'] = true,
	['35365'] = true,
	['35366'] = true,
	['35367'] = true,
	['35368'] = true,
	['35369'] = true,
	['35370'] = true,
	['35371'] = true,
	['35372'] = true,
	['35373'] = true,
	['35374'] = true,
	['35375'] = true,
	['35468'] = true,
	['35469'] = true,
	['35470'] = true,
	['35471'] = true,
	['25838'] = true,
	['77667'] = true,
	['77670'] = true,
	['77671'] = true,
	['77697'] = true,
	['77700'] = true,
	['77701'] = true,
	['77874'] = true,
	['77876'] = true,
	['77878'] = true,
	['77907'] = true,
	['77908'] = true,
	['77909'] = true,
	['77742'] = true,
	['77746'] = true,
	['77748'] = true,
	['77752'] = true,
	['77813'] = true,
	['77815'] = true,
	['77819'] = true,
	['77820'] = true,
	['77666'] = true,
	['77668'] = true,
	['77669'] = true,
	['77696'] = true,
	['77698'] = true,
	['77699'] = true,
	['77875'] = true,
	['77877'] = true,
	['77879'] = true,
	['77904'] = true,
	['77905'] = true,
	['77906'] = true,
	['77744'] = true,
	['77745'] = true,
	['77749'] = true,
	['77751'] = true,
	['77811'] = true,
	['77812'] = true,
	['77818'] = true,
	['77821'] = true,
	['77720'] = true,
	['77721'] = true,
	['77730'] = true,
	['77731'] = true,
	['77747'] = true,
	['77750'] = true,
	['77816'] = true,
	['77817'] = true,
	['77598'] = true,
	['77599'] = true,
	['77600'] = true,
	['77601'] = true,
	['77602'] = true,
	['77603'] = true,
	['77604'] = true,
	['77633'] = true,
	['77634'] = true,
	['77635'] = true,
	['77636'] = true,
	['77637'] = true,
	['77638'] = true,
	['77639'] = true,
	['77736'] = true,
	['77737'] = true,
	['77738'] = true,
	['77739'] = true,
	['77740'] = true,
	['77741'] = true,
	['77743'] = true,
	['77805'] = true,
	['77806'] = true,
	['77807'] = true,
	['77808'] = true,
	['77809'] = true,
	['77810'] = true,
	['77814'] = true,
	['77605'] = true,
	['77640'] = true,
	['77753'] = true,
	['77822'] = true,
	['28158'] = true,
	['22987'] = true,
	['22992'] = true,
	['54703'] = true,
	['81695'] = true,
	['82858'] = true,
	['83159'] = true,
	['83163'] = true,
	['83168'] = true,
	['83172'] = true,
	['83177'] = true,
	['83181'] = true,
	['83186'] = true,
	['83190'] = true,
	['83195'] = true,
	['83199'] = true,
	['83204'] = true,
	['83208'] = true,
	['83213'] = true,
	['83217'] = true,
	['83222'] = true,
	['83226'] = true,
	['82615'] = true,
	['82619'] = true,
	['82624'] = true,
	['82628'] = true,
	['82633'] = true,
	['82637'] = true,
	['82642'] = true,
	['82646'] = true,
	['82651'] = true,
	['82655'] = true,
	['82660'] = true,
	['82664'] = true,
	['82669'] = true,
	['82673'] = true,
	['82678'] = true,
	['82682'] = true,
	['81580'] = true,
	['81584'] = true,
	['81589'] = true,
	['81593'] = true,
	['81598'] = true,
	['81602'] = true,
	['81607'] = true,
	['81611'] = true,
	['81616'] = true,
	['81620'] = true,
	['81625'] = true,
	['81629'] = true,
	['81634'] = true,
	['81638'] = true,
	['81643'] = true,
	['81647'] = true,
	['88356'] = true,
	['88266'] = true,
	['81695'] = true,
	['82858'] = true,
	['83159'] = true,
	['83163'] = true,
	['83168'] = true,
	['83172'] = true,
	['83177'] = true,
	['83181'] = true,
	['83186'] = true,
	['83190'] = true,
	['83195'] = true,
	['83199'] = true,
	['83204'] = true,
	['83208'] = true,
	['83213'] = true,
	['83217'] = true,
	['83222'] = true,
	['83226'] = true,
	['82615'] = true,
	['82619'] = true,
	['82624'] = true,
	['82628'] = true,
	['82633'] = true,
	['82637'] = true,
	['82642'] = true,
	['82646'] = true,
	['82651'] = true,
	['82655'] = true,
	['82660'] = true,
	['82664'] = true,
	['82669'] = true,
	['82673'] = true,
	['82678'] = true,
	['82682'] = true,
	['81580'] = true,
	['81584'] = true,
	['81589'] = true,
	['81593'] = true,
	['81598'] = true,
	['81602'] = true,
	['81607'] = true,
	['81611'] = true,
	['81616'] = true,
	['81620'] = true,
	['81625'] = true,
	['81629'] = true,
	['81634'] = true,
	['81638'] = true,
	['81643'] = true,
	['81647'] = true,
	['88356'] = true,
	['88266'] = true,

	-- Mail
	['70115'] = true,
	['70123'] = true,
	['62363'] = true,
	['62385'] = true,
	['62380'] = true,
	['62409'] = true,
	['62429'] = true,
	['62445'] = true,
	['62353'] = true,
	['62407'] = true,
	['62423'] = true,
	['62439'] = true,
	['44248'] = true,
	['44257'] = true,
	['44182'] = true,
	['44204'] = true,
	['44295'] = true,
	['44305'] = true,
	['44109'] = true,
	['44110'] = true,
	['44122'] = true,
	['44171'] = true,
	['44189'] = true,
	['44059'] = true,
	['44060'] = true,
	['29135'] = true,
	['29136'] = true,
	['29180'] = true,
	['30835'] = true,
	['35376'] = true,
	['35377'] = true,
	['35378'] = true,
	['35379'] = true,
	['35380'] = true,
	['35381'] = true,
	['35382'] = true,
	['35383'] = true,
	['35384'] = true,
	['35385'] = true,
	['35386'] = true,
	['35387'] = true,
	['35388'] = true,
	['35389'] = true,
	['35390'] = true,
	['35391'] = true,
	['35392'] = true,
	['35393'] = true,
	['35394'] = true,
	['35395'] = true,
	['35472'] = true,
	['35473'] = true,
	['35474'] = true,
	['35475'] = true,
	['64644'] = true,
	['77673'] = true,
	['77674'] = true,
	['77676'] = true,
	['77704'] = true,
	['77705'] = true,
	['77707'] = true,
	['77880'] = true,
	['77882'] = true,
	['77883'] = true,
	['77910'] = true,
	['77913'] = true,
	['77914'] = true,
	['77642'] = true,
	['77645'] = true,
	['77762'] = true,
	['77763'] = true,
	['77765'] = true,
	['77766'] = true,
	['77831'] = true,
	['77832'] = true,
	['77672'] = true,
	['77675'] = true,
	['77677'] = true,
	['77702'] = true,
	['77703'] = true,
	['77706'] = true,
	['77881'] = true,
	['77884'] = true,
	['77885'] = true,
	['77911'] = true,
	['77912'] = true,
	['77915'] = true,
	['77641'] = true,
	['77643'] = true,
	['77760'] = true,
	['77761'] = true,
	['77768'] = true,
	['77769'] = true,
	['77829'] = true,
	['77834'] = true,
	['77644'] = true,
	['77646'] = true,
	['77722'] = true,
	['77723'] = true,
	['77764'] = true,
	['77767'] = true,
	['77830'] = true,
	['77833'] = true,
	['77606'] = true,
	['77607'] = true,
	['77608'] = true,
	['77609'] = true,
	['77610'] = true,
	['77611'] = true,
	['77612'] = true,
	['77754'] = true,
	['77755'] = true,
	['77756'] = true,
	['77757'] = true,
	['77758'] = true,
	['77759'] = true,
	['77823'] = true,
	['77824'] = true,
	['77825'] = true,
	['77826'] = true,
	['77827'] = true,
	['77828'] = true,
	['77835'] = true,
	['77613'] = true,
	['77836'] = true,
	['28162'] = true,
	['22985'] = true,
	['22993'] = true,
	['83160'] = true,
	['83164'] = true,
	['83169'] = true,
	['83173'] = true,
	['83178'] = true,
	['83182'] = true,
	['83187'] = true,
	['83191'] = true,
	['83196'] = true,
	['83200'] = true,
	['83205'] = true,
	['83209'] = true,
	['83214'] = true,
	['83218'] = true,
	['83223'] = true,
	['83227'] = true,
	['82616'] = true,
	['82620'] = true,
	['82625'] = true,
	['82629'] = true,
	['82634'] = true,
	['82638'] = true,
	['82643'] = true,
	['82647'] = true,
	['82652'] = true,
	['82656'] = true,
	['82661'] = true,
	['82665'] = true,
	['82670'] = true,
	['82674'] = true,
	['82679'] = true,
	['82683'] = true,
	['81581'] = true,
	['81585'] = true,
	['81590'] = true,
	['81594'] = true,
	['81599'] = true,
	['81603'] = true,
	['81608'] = true,
	['81612'] = true,
	['81617'] = true,
	['81621'] = true,
	['81626'] = true,
	['81630'] = true,
	['81635'] = true,
	['81639'] = true,
	['81644'] = true,
	['81648'] = true,
	['83160'] = true,
	['83164'] = true,
	['83169'] = true,
	['83173'] = true,
	['83178'] = true,
	['83182'] = true,
	['83187'] = true,
	['83191'] = true,
	['83196'] = true,
	['83200'] = true,
	['83205'] = true,
	['83209'] = true,
	['83214'] = true,
	['83218'] = true,
	['83223'] = true,
	['83227'] = true,
	['82616'] = true,
	['82620'] = true,
	['82625'] = true,
	['82629'] = true,
	['82634'] = true,
	['82638'] = true,
	['82643'] = true,
	['82647'] = true,
	['82652'] = true,
	['82656'] = true,
	['82661'] = true,
	['82665'] = true,
	['82670'] = true,
	['82674'] = true,
	['82679'] = true,
	['82683'] = true,
	['81581'] = true,
	['81585'] = true,
	['81590'] = true,
	['81594'] = true,
	['81599'] = true,
	['81603'] = true,
	['81608'] = true,
	['81612'] = true,
	['81617'] = true,
	['81621'] = true,
	['81626'] = true,
	['81630'] = true,
	['81635'] = true,
	['81639'] = true,
	['81644'] = true,
	['81648'] = true,

	-- Plate
	['34648'] = true,
	['34649'] = true,
	['34650'] = true,
	['34651'] = true,
	['34652'] = true,
	['34653'] = true,
	['34655'] = true,
	['34656'] = true,
	['83161'] = true,
	['83165'] = true,
	['83166'] = true,
	['83170'] = true,
	['83174'] = true,
	['83175'] = true,
	['83179'] = true,
	['83183'] = true,
	['83184'] = true,
	['83188'] = true,
	['83192'] = true,
	['83193'] = true,
	['83197'] = true,
	['83201'] = true,
	['83202'] = true,
	['83206'] = true,
	['83210'] = true,
	['83211'] = true,
	['83215'] = true,
	['83219'] = true,
	['83220'] = true,
	['83224'] = true,
	['83228'] = true,
	['83229'] = true,
	['82617'] = true,
	['82621'] = true,
	['82622'] = true,
	['82626'] = true,
	['82630'] = true,
	['82631'] = true,
	['82635'] = true,
	['82639'] = true,
	['82640'] = true,
	['82644'] = true,
	['82648'] = true,
	['82649'] = true,
	['82653'] = true,
	['82657'] = true,
	['82658'] = true,
	['82662'] = true,
	['82666'] = true,
	['82667'] = true,
	['82671'] = true,
	['82675'] = true,
	['82676'] = true,
	['82680'] = true,
	['82684'] = true,
	['82685'] = true,
	['81582'] = true,
	['81586'] = true,
	['81587'] = true,
	['81591'] = true,
	['81595'] = true,
	['81596'] = true,
	['81600'] = true,
	['81604'] = true,
	['81605'] = true,
	['81609'] = true,
	['81613'] = true,
	['81614'] = true,
	['81618'] = true,
	['81622'] = true,
	['81623'] = true,
	['81627'] = true,
	['81631'] = true,
	['81632'] = true,
	['81636'] = true,
	['81640'] = true,
	['81641'] = true,
	['81645'] = true,
	['81649'] = true,
	['81650'] = true,
	['83161'] = true,
	['83165'] = true,
	['83166'] = true,
	['83170'] = true,
	['83174'] = true,
	['83175'] = true,
	['83179'] = true,
	['83183'] = true,
	['83184'] = true,
	['83188'] = true,
	['83192'] = true,
	['83193'] = true,
	['83197'] = true,
	['83201'] = true,
	['83202'] = true,
	['83206'] = true,
	['83210'] = true,
	['83211'] = true,
	['83215'] = true,
	['83219'] = true,
	['83220'] = true,
	['83224'] = true,
	['83228'] = true,
	['83229'] = true,
	['82617'] = true,
	['82621'] = true,
	['82622'] = true,
	['82626'] = true,
	['82630'] = true,
	['82631'] = true,
	['82635'] = true,
	['82639'] = true,
	['82640'] = true,
	['82644'] = true,
	['82648'] = true,
	['82649'] = true,
	['82653'] = true,
	['82657'] = true,
	['82658'] = true,
	['82662'] = true,
	['82666'] = true,
	['82667'] = true,
	['82671'] = true,
	['82675'] = true,
	['82676'] = true,
	['82680'] = true,
	['82684'] = true,
	['82685'] = true,
	['81582'] = true,
	['81586'] = true,
	['81587'] = true,
	['81591'] = true,
	['81595'] = true,
	['81596'] = true,
	['81600'] = true,
	['81604'] = true,
	['81605'] = true,
	['81609'] = true,
	['81613'] = true,
	['81614'] = true,
	['81618'] = true,
	['81622'] = true,
	['81623'] = true,
	['81627'] = true,
	['81631'] = true,
	['81632'] = true,
	['81636'] = true,
	['81640'] = true,
	['81641'] = true,
	['81645'] = true,
	['81649'] = true,
	['81650'] = true,
	['70108'] = true,
	['70116'] = true,
	['70117'] = true,
	['70120'] = true,
	['70121'] = true,
	['62365'] = true,
	['62384'] = true,
	['62418'] = true,
	['62432'] = true,
	['62448'] = true,
	['62449'] = true,
	['62359'] = true,
	['62382'] = true,
	['62408'] = true,
	['62410'] = true,
	['62428'] = true,
	['62430'] = true,
	['62355'] = true,
	['62438'] = true,
	['44176'] = true,
	['44195'] = true,
	['44198'] = true,
	['44201'] = true,
	['44247'] = true,
	['44183'] = true,
	['44205'] = true,
	['44296'] = true,
	['44306'] = true,
	['44111'] = true,
	['44112'] = true,
	['44120'] = true,
	['44121'] = true,
	['44123'] = true,
	['44197'] = true,
	['44239'] = true,
	['44240'] = true,
	['44243'] = true,
	['44057'] = true,
	['44058'] = true,
	['40440'] = true,
	['40441'] = true,
	['40442'] = true,
	['40443'] = true,
	['40444'] = true,
	['29127'] = true,
	['29134'] = true,
	['29184'] = true,
	['35402'] = true,
	['35403'] = true,
	['35404'] = true,
	['35405'] = true,
	['35406'] = true,
	['35407'] = true,
	['35408'] = true,
	['35409'] = true,
	['35410'] = true,
	['35411'] = true,
	['35412'] = true,
	['35413'] = true,
	['35414'] = true,
	['35415'] = true,
	['35416'] = true,
	['35476'] = true,
	['35477'] = true,
	['35478'] = true,
	['77687'] = true,
	['77688'] = true,
	['77689'] = true,
	['77714'] = true,
	['77715'] = true,
	['77718'] = true,
	['77892'] = true,
	['77894'] = true,
	['77897'] = true,
	['77923'] = true,
	['77924'] = true,
	['77927'] = true,
	['77664'] = true,
	['77665'] = true,
	['77859'] = true,
	['77867'] = true,
	['77868'] = true,
	['77869'] = true,
	['77871'] = true,
	['77872'] = true,
	['77684'] = true,
	['77685'] = true,
	['77686'] = true,
	['77716'] = true,
	['77717'] = true,
	['77719'] = true,
	['77893'] = true,
	['77895'] = true,
	['77896'] = true,
	['77922'] = true,
	['77925'] = true,
	['77926'] = true,
	['38661'] = true,
	['38663'] = true,
	['38665'] = true,
	['38666'] = true,
	['38667'] = true,
	['38668'] = true,
	['38669'] = true,
	['38670'] = true,
	['77661'] = true,
	['77662'] = true,
	['77663'] = true,
	['77858'] = true,
	['77864'] = true,
	['77865'] = true,
	['77866'] = true,
	['77873'] = true,
	['77726'] = true,
	['77727'] = true,
	['77734'] = true,
	['77735'] = true,
	['77862'] = true,
	['77863'] = true,
	['77928'] = true,
	['77929'] = true,
	['77621'] = true,
	['77622'] = true,
	['77623'] = true,
	['77624'] = true,
	['77625'] = true,
	['77626'] = true,
	['77653'] = true,
	['77654'] = true,
	['77655'] = true,
	['77656'] = true,
	['77657'] = true,
	['77658'] = true,
	['77659'] = true,
	['77853'] = true,
	['77854'] = true,
	['77855'] = true,
	['77856'] = true,
	['77857'] = true,
	['77860'] = true,
	['77861'] = true,
	['77660'] = true,
	['77870'] = true,

	-- Misc
	['62348'] = true,
	['62350'] = true,
	['62351'] = true,
	['62352'] = true,
	['62357'] = true,
	['62361'] = true,
	['62378'] = true,
	['62415'] = true,
	['62427'] = true,
	['62440'] = true,
	['62354'] = true,
	['62375'] = true,
	['62376'] = true,
	['62377'] = true,
	['62436'] = true,
	['62437'] = true,
	['65175'] = true,
	['65176'] = true,
	['44167'] = true,
	['44188'] = true,
	['44216'] = true,
	['44242'] = true,
	['38452'] = true,
	['38453'] = true,
	['38458'] = true,
	['38459'] = true,
	['38462'] = true,
	['38463'] = true,
	['29128'] = true,
	['29132'] = true,
	['29139'] = true,
	['29140'] = true,
	['29145'] = true,
	['29146'] = true,
	['29168'] = true,
	['29169'] = true,
	['29173'] = true,
	['29179'] = true,
	['29276'] = true,
	['29280'] = true,
	['29284'] = true,
	['29288'] = true,
	['30841'] = true,
	['32538'] = true,
	['32539'] = true,
	['32864'] = true,
	['31341'] = true,
	['25824'] = true,
	['25826'] = true,
	['49052'] = true,
	['49054'] = true,
	['32694'] = true,
	['32695'] = true,
	['38662'] = true,
	['38664'] = true,
	['38671'] = true,
	['38672'] = true,
	['38674'] = true,
	['38675'] = true,
	['39208'] = true,
	['39320'] = true,
	['39322'] = true,
	['17690'] = true,
	['17691'] = true,
	['17900'] = true,
	['17901'] = true,
	['17905'] = true,
	['17906'] = true,
	['34657'] = true,
	['34658'] = true,
	['34659'] = true,
	['38147'] = true,
	['17902'] = true,
	['17903'] = true,
	['17907'] = true,
	['17908'] = true,
	['40476'] = true,
	['40477'] = true,
	['21766'] = true,
	['64886'] = true,
	['64887'] = true,
	['64888'] = true,
	['64889'] = true,
	['64890'] = true,
	['64891'] = true,
	['64892'] = true,
	['64893'] = true,
	['64894'] = true,
	['64895'] = true,
	['64896'] = true,
	['64897'] = true,
	['64898'] = true,
	['64899'] = true,
	['64900'] = true,
	['64901'] = true,
	['64902'] = true,
	['64903'] = true,
	['64905'] = true,
	['64906'] = true,
	['64907'] = true,
	['64908'] = true,
	['64909'] = true,
	['64910'] = true,
	['64911'] = true,
	['64912'] = true,
	['64913'] = true,
	['64914'] = true,
	['64915'] = true,
	['64916'] = true,
	['64917'] = true,
	['64918'] = true,
	['64919'] = true,
	['64920'] = true,
	['64921'] = true,
	['64922'] = true,
	['4614'] = true,
	['22990'] = true,
	['5387'] = true,
	['34484'] = true,
	['34486'] = true,
	['35279'] = true,
	['35280'] = true,
	['40483'] = true,
	['46874'] = true,
	['75274'] = true,
	['83230'] = true,
	['83231'] = true,
	['83232'] = true,
	['83233'] = true,
	['83234'] = true,
	['83235'] = true,
	['83236'] = true,
	['83237'] = true,
	['83238'] = true,
	['83239'] = true,
	['83245'] = true,
	['83246'] = true,
	['83247'] = true,
	['83248'] = true,
	['83249'] = true,
	['83255'] = true,
	['83256'] = true,
	['83257'] = true,
	['83258'] = true,
	['83259'] = true,
	['83272'] = true,
	['83273'] = true,
	['86567'] = true,
	['86570'] = true,
	['86572'] = true,
	['86576'] = true,
	['86579'] = true,
	['86585'] = true,
	['86587'] = true,
	['87780'] = true,
	['82686'] = true,
	['82687'] = true,
	['82688'] = true,
	['82689'] = true,
	['82690'] = true,
	['82691'] = true,
	['82692'] = true,
	['82693'] = true,
	['82694'] = true,
	['82695'] = true,
	['82696'] = true,
	['82697'] = true,
	['82698'] = true,
	['82699'] = true,
	['82700'] = true,
	['82701'] = true,
	['82702'] = true,
	['82703'] = true,
	['82704'] = true,
	['82705'] = true,
	['82718'] = true,
	['82719'] = true,
	['81651'] = true,
	['81652'] = true,
	['81653'] = true,
	['81654'] = true,
	['81655'] = true,
	['81656'] = true,
	['81657'] = true,
	['81658'] = true,
	['81659'] = true,
	['81660'] = true,
	['81661'] = true,
	['81662'] = true,
	['81663'] = true,
	['81664'] = true,
	['81665'] = true,
	['81666'] = true,
	['81667'] = true,
	['81668'] = true,
	['81669'] = true,
	['81670'] = true,
	['81683'] = true,
	['81684'] = true,
	['89196'] = true,
	['75274'] = true,
	['83230'] = true,
	['83231'] = true,
	['83232'] = true,
	['83233'] = true,
	['83234'] = true,
	['83235'] = true,
	['83236'] = true,
	['83237'] = true,
	['83238'] = true,
	['83239'] = true,
	['83245'] = true,
	['83246'] = true,
	['83247'] = true,
	['83248'] = true,
	['83249'] = true,
	['83255'] = true,
	['83256'] = true,
	['83257'] = true,
	['83258'] = true,
	['83259'] = true,
	['83272'] = true,
	['83273'] = true,
	['86567'] = true,
	['86570'] = true,
	['86572'] = true,
	['86576'] = true,
	['86579'] = true,
	['86585'] = true,
	['86587'] = true,
	['87780'] = true,
	['82686'] = true,
	['82687'] = true,
	['82688'] = true,
	['82689'] = true,
	['82690'] = true,
	['82691'] = true,
	['82692'] = true,
	['82693'] = true,
	['82694'] = true,
	['82695'] = true,
	['82696'] = true,
	['82697'] = true,
	['82698'] = true,
	['82699'] = true,
	['82700'] = true,
	['82701'] = true,
	['82702'] = true,
	['82703'] = true,
	['82704'] = true,
	['82705'] = true,
	['82718'] = true,
	['82719'] = true,
	['81651'] = true,
	['81652'] = true,
	['81653'] = true,
	['81654'] = true,
	['81655'] = true,
	['81656'] = true,
	['81657'] = true,
	['81658'] = true,
	['81659'] = true,
	['81660'] = true,
	['81661'] = true,
	['81662'] = true,
	['81663'] = true,
	['81664'] = true,
	['81665'] = true,
	['81666'] = true,
	['81667'] = true,
	['81668'] = true,
	['81669'] = true,
	['81670'] = true,
	['81683'] = true,
	['81684'] = true,
	['89196'] = true,
	['70105'] = true,
	['70106'] = true,
	['70107'] = true,
	['70109'] = true,
	['70110'] = true,
	['70111'] = true,
	['70112'] = true,
	['70113'] = true,
	['70119'] = true,
	['70124'] = true,
	['70125'] = true,
	['70126'] = true,
	['70127'] = true,
	['70128'] = true,
	['70141'] = true,
	['70142'] = true,
	['70143'] = true,
	['70144'] = true,
	['71327'] = true,
	['71328'] = true,
	['71329'] = true,
	['71330'] = true,
	['58483'] = true,
	['62362'] = true,
	['62383'] = true,
	['62416'] = true,
	['62434'] = true,
	['62447'] = true,
	['62463'] = true,
	['62464'] = true,
	['62465'] = true,
	['62466'] = true,
	['62467'] = true,
	['64645'] = true,
	['64904'] = true,
	['65274'] = true,
	['65360'] = true,
	['68775'] = true,
	['68776'] = true,
	['68777'] = true,
	['69764'] = true,
	['50398'] = true,
	['50400'] = true,
	['50402'] = true,
	['50404'] = true,
	['52572'] = true,
	['50397'] = true,
	['50399'] = true,
	['50401'] = true,
	['50403'] = true,
	['52571'] = true,
	['50384'] = true,
	['50386'] = true,
	['50387'] = true,
	['50388'] = true,
	['52570'] = true,
	['50375'] = true,
	['50376'] = true,
	['50377'] = true,
	['50378'] = true,
	['52569'] = true,
	['44073'] = true,
	['44074'] = true,
	['44283'] = true,
	['29297'] = true,
	['29301'] = true,
	['29305'] = true,
	['29309'] = true,
	['29296'] = true,
	['29308'] = true,
	['32485'] = true,
	['32486'] = true,
	['32487'] = true,
	['32488'] = true,
	['32489'] = true,
	['32490'] = true,
	['32491'] = true,
	['32492'] = true,
	['32493'] = true,
	['32649'] = true,
	['32757'] = true,
	['29295'] = true,
	['29299'] = true,
	['29303'] = true,
	['29306'] = true,
	['29300'] = true,
	['29304'] = true,
	['29279'] = true,
	['29283'] = true,
	['29287'] = true,
	['29290'] = true,
	['29294'] = true,
	['29298'] = true,
	['29302'] = true,
	['29307'] = true,
	['29278'] = true,
	['29282'] = true,
	['29286'] = true,
	['29291'] = true,
	['31113'] = true,
	['34675'] = true,
	['34676'] = true,
	['34677'] = true,
	['34678'] = true,
	['34679'] = true,
	['34680'] = true,
	['29277'] = true,
	['29281'] = true,
	['29285'] = true,
	['29289'] = true,
	['29119'] = true,
	['29123'] = true,
	['29126'] = true,
	['29170'] = true,
	['29172'] = true,
	['29176'] = true,
	['29177'] = true,
	['29181'] = true,
	['32770'] = true,
	['32771'] = true,
	['30834'] = true,
	['21200'] = true,
	['21205'] = true,
	['21210'] = true,
	['52252'] = true,
	['77592'] = true,
	['77593'] = true,
	['77594'] = true,
	['77595'] = true,
	['77596'] = true,
	['77597'] = true,
	['21199'] = true,
	['21204'] = true,
	['21209'] = true,
	['21198'] = true,
	['21203'] = true,
	['21208'] = true,
	['21394'] = true,
	['21397'] = true,
	['21400'] = true,
	['21403'] = true,
	['21406'] = true,
	['21409'] = true,
	['21412'] = true,
	['21415'] = true,
	['21418'] = true,
	['21197'] = true,
	['21202'] = true,
	['21207'] = true,
	['21393'] = true,
	['21396'] = true,
	['21399'] = true,
	['21402'] = true,
	['21405'] = true,
	['21408'] = true,
	['21411'] = true,
	['21414'] = true,
	['21417'] = true,
	['17904'] = true,
	['17909'] = true,
	['21196'] = true,
	['21201'] = true,
	['21206'] = true,
	['23705'] = true,
	['23709'] = true,
	['38309'] = true,
	['38310'] = true,
	['38311'] = true,
	['38312'] = true,
	['38313'] = true,
	['38314'] = true,
	['40643'] = true,
	['43300'] = true,
	['43348'] = true,
	['43349'] = true,
	['88166'] = true,
	['88167'] = true,
	['88168'] = true,
	['88169'] = true,
	['88166'] = true,
	['88167'] = true,
	['88168'] = true,
	['88169'] = true,
}

function ns.Disenchantable(link)
	local __, __, quality = GetItemInfo(link)

	if(IsEquippableItem(link) and quality and quality > 1 and quality < 5) then
		return not notDisenchantable[link:match('item:(%d+):')]
	end
end
