task :lhh_covers do
  require "mini_magick"

  list = [
    # [12, "七招讓他愛上妳的手"],
    # [17, "女人讓自己更容易高潮的小方法"],
    # [18, "女人，要學會享受自己的高潮"],
    # [19, "用心靈力量，達到高潮"],
    # [20, "五種讓你更激情的食物"],
    # [23, "女人的小遊戲機"],
    # [24, "情趣用品的第一堂課"],
    # [27, "關於「高潮」的幾個問題"],
    # [28, "讓臉紅小編告訴妳！如何到達混合式高潮"],
    # [29, "情趣用品新手六步驟"],
    # [30, "如何挑逗女人的兩大重點"],
    # [35, "讓性事更美滿的五個方法"],
    # [39, "「G 點」究竟是什麼？"],
    # [40, "四個技巧，喚醒 G 點"],
    # [43, "關於潮吹的祕密"],
    # [44, "只是做個愛，不行嗎？"],
    # [45, "青春無敵女人心"],
    # [46, "把握三個時間，撩撥女人的性慾，讓她更想要"],
    # [47, "當你遇到喜歡女人的女人，有些問題不必問"],
    # [57, "我知道我有點小心眼"],
    # [58, "所有完美的不完美"],
    # [59, "耍狠還是要相愛"],
    # [60, "愛裡，沒有懼怕"],
    # [61, "女人的高潮需要練習"],
    # [64, "就是兩個人"],
    # [65, "我就是你的自由"],
    # [68, "沒有過夜的一夜情"],
    # [69, "淫聲浪語讓我更愛你"],
    # [70, "乳房愛撫技巧大公開"],
    # [72, "愛為什麼這麼痛？"],
    # [73, "不是為了要分開"],
    # [75, "十個步驟簡單電愛"],
    # [76, "想要被她好好咬"],
    # [78, "手要早點伸過去"],
    # [79, "一起看 A 片，更享受"],
    # [81, "面對愛和性，我只對自己忠誠"],
    # [82, "裸睡也是種前戲"],
    # [84, "七個方法，讓兩人更加激情四射"],
    # [89, "相信愛情"],
    # [90, "情慾創作：無疆"],
    # [91, "女孩們，你認識自己的陰道嗎？"],
    # [93, "當一切都剛剛好"],
    # [94, "用枕頭來做凱格爾運動"],
    # [96, "三個方法，簡單成為誘人又主動的女人"],
    # [97, "成為調情聖手的八大決定因素"],
    # [98, "請和男朋友大膽認真的討論性愛吧！"],
    # [100, "另外一半的世界"],
    # [102, "無法呼吸1：洶湧之第一次約會"],
    # [103, "無法呼吸1：洶湧之我想要你"],
    # [104, "無法呼吸1：洶湧之激情時刻"],
    # [105, "女人的身體是很奇妙的"],
    # [107, "愛情，不證自明"],
    # [109, "七個讓男人對妳朝思暮想的重點"],
    # [113, "親愛的，讓我們再多興奮一點點"],
    # [114, "愛情不是選擇題"],
    # [117, "我都還想念她過份好看得身體線條"],
    # [120, "深夜高潮公車"],
    # [121, "無法呼吸2：炙熱之 3P 邀請"],
    # [122, "性，是唯一的方式讓我體會愛"],
    # [123, "你是我，無比完美的鬧鈴"],
    # [124, "性愛最美好的，是我以身問路"],
    # [125, "用嘴送上，愛的生日之禮"],
    # [126, "屬於我們的，私慾電影院"],
    # [127, "快閃性愛表演藝術者"],
    # [128, "他總知道，我的什麼地方在等他"],
    # [129, "離婚後，她擁有第一次高潮"],
    # [130, "這一次，男友送上最火辣的生日禮物"],
    # [131, "今晚，我是你的遙控女孩"],
    # [132, "情慾男女系列：髮（女之章）"],
    # [133, "情慾男女系列：髮（男之章）"],
    # [137, "春心蕩漾，從吃對早餐開始"],
    # [138, "可不可以不要怕"],
    # [139, "我們做愛，但不愛"],
    # [141, "命中註定，眾星拱月"],
    # [142, "命中註定，綠帽罩頂"],
    # [143, "命中註定，情慾大亂鬥"],
    # [144, "春心蕩漾，從吃對午餐開始"],
    # [146, "萬元懸賞，情慾作家募集大賽"],
    # [147, "她每天晚上都喊著不同的名字"],
    # [148, "我想進入妳，聽見妳口中發出的呻吟"],
    # [149, "春心蕩漾，從吃對晚餐開始"],
    # [151, "親愛的，你的惡作劇如此煽情"],
    # [152, "《騷動：改造灰姑娘》之情不自禁"],
    # [154, "Hello Ex"],
    # [156, "一場甜美如夢的早晨性愛"],
    # [157, "Ex，很鳥"],
    # [158, "性感的揶揄：輕熟女和一夜情"],
    # [159, "今晚，我專屬於你"],
    # [160, "《騷動：改造灰姑娘》之無法忘懷"],
    # [161, "她像隻無法捉摸的柴郡貓"],
    # [166, "矇眼性愛之夜"],
    # [167, "她總是感覺到飢餓"],
    # [168, "罪與罰"],
    # [169, "媽，我們現在正在忙"],
    # [170, "遠距離，讓我用聲音進入妳"],
    # [171, "騷動的晦暗巷弄"],
    # [172, "她的舌頭有許多女孩的味道，她是小蕾"],
    # [173, "女人不願蛇蠍，但男人總愛酖毒"],
    # [174, "與 Ex 的激情鏡愛"],
    # [176, "情慾掮客"],
    # [177, "人妻的夢幻情慾 APP 體驗"],
    # [178, "唇印，印在心口上"],
    # [181, "我的體內，藏著一隻蝴蝶"],
    # [182, "每場性愛，都是獨一無二的"],
    # [183, "辦公室那場，令人無法自拔的禁忌性愛"],
    # [185, "淺嚐，初夏的滋味"],
    # [186, "成為妳的內臟"],
    # [187, "用慾望填滿想你的寂寞"],
    # [188, "做愛後，動物感傷。"],
    # [189, "要張還是不要張，腿？！"],
    # [191, "九歲女孩的快感初體驗"],
    # [194, "【Lesbian Talk】愛情其實都一樣"],
    # [195, "春心蕩漾，從吃對宵夜開始"],
    # [198, "女人都好想擁有大胸部？"],
    # [201, "《祕密I：解放》之寫下妳的慾望"],
    # [202, "要做還是不要做，愛？！"],
    # [203, "妳是跨性別者還是同性戀者？"],
    # [205, "命中註定，他是偷情郎"],
    # [206, "今晚 Ex 是我的主人"],
    # [207, "《祕密I：解放》之按摩初體驗"],
    # [208, "男人的 A 片告解室"],
    # [209, "可以走出妳的衣櫥了吧！"],
    # [210, "要吃還是不要吃，西餐？！"],
    # [211, "與前男友的激情電愛"],
    # [212, "親愛的，你懂不懂？"],
    # [213, "男人怎麼看小三？"],
    # [214, "五個培養激情的約會地點"],
    # [215, "與大明星的秘密激情"],
    # [216, "14 個關於乳房的有趣事實"],
    # [217, "命中註定，一見鍾情「煞」到你"],
    # [219, "要射還是不要射，__？！"],
    # [220, "《祕密I：解放》之第一次高潮"],
    # [222, "與 Ex 在泳池邊的火辣激情"],
    # [223, "男人秘密健身房"],
    # [224, "靜下心，就能見到最想見的人"],
    # [225, "六個讓女人沒「性」趣的小事"],
    # [229, "【深淵】序章．深淵之肆"],
    # [230, "情慾文學：激情狂歡 KTV"],
    # [231, "愛愛別急躁！為彼此留點白"],
    # [233, "命中註定，情冷感、性冷感"],
    # [235, "出軌"],
    # [236, "別再相信 A 片！即使潮吹也不等於舒服的快感"],
    # [237, "男人不想說的三個最屌煩惱"],
    # [238, "【深淵】序章．第壹回"],
    # [240, "情慾文學：黑暗激情"],
    # [241, "高潮是什麼？女人大聲說"],
    # [242, "妳是我的早餐"],
    # [245, "男人不戴保險套的五個常見藉口"],
    # [247, "命中註定，被忽視、被跳過"],
    # [248, "在床上發生這「六件事」真的不奇怪！"],
    # [251, "40 歲後更好愛的六個方法"],
    # [252, "週末夜晚的肉食男女"],
    # [255, "【深淵】序章．第貳回"],
    # [256, "要當還是不要當，小三？！"],
    # [258, "不想停下來的接吻九招"],
    # [260, "情慾文學：欲擒故縱的愛"],
    # [262, "【每日新奇】別鬧了！真實性愛跟 A 片情結不一樣"],
    # [263, "六位當紅好萊塢女星給妳的性愛建議"],
    # [265, "增進情趣的按摩心機四技巧"],
    # [267, "讓你們更激情的八個性愛挑戰"],
    # [268, "男人的摩鐵初體驗"],
    # [269, "性學專家推薦的三個激情秘技"],
    # [270, "讓男人叫床的七個口交技巧"],
    # [272, "【深淵】序章．第參回"],
    # [275, "你一定要學會的保險套戴法"],
    # [279, "要分還是不要分，手？！"],
    # [282, "六個勾起性慾的秘密部位"],
    # [284, "讓情人節更火辣激情的五感秘技"],
    # [285, "十個關於性愛的有趣事實"],
    # [288, "命中註定，一輩子當砲友"],
    # [291, "情慾文學：失控情人節"],
    # [292, "令他意猶未盡的舌吻基本教戰"],
    # [293, "不能忽視的男人乳頭愛撫法"],
    # [294, "【深淵】第壹章．深淵之陸"],
    # [295, "讀者分享：LELO 蒂魔陰蒂按摩器的自慰體驗"],
    # [297, "第一次親密接觸，兩隻指頭的練習"],
    # [305, "當個「不乖」的女人讓性愛更美好！"],
    # [306, "【深淵】第壹章．第壹回"],
    # [309, "男上位：經典傳教士"],
    # [310, "情慾文學：情人節狂歡夜"],
    # [313, "情慾文學：師生禁戀"],
    # [314, "和好朋友上床的 3 個好處和 3 個壞處"],
    # [315, "情慾文學：我只是想要滿足自己的慾望"],
    # [318, "女人的性能量製造廠：背部"],
    # [322, "情慾文學：激戰情人夜"],
    # [325, "誰來決定愛愛的進入時間點？"],
    # [326, "性愛挑戰：五種戴保險套的另類方法"],
    # [327, "【深淵】第壹章．第貳回"],
    # [331, "其實，男人也想慢慢來"],
    # [335, "【深淵】第壹章．第參回"],
    # [336, "小說連載：消失的前男友"],
    # [344, "令女人意猶未盡的四個挑逗秘技"],
    # [347, "【深淵】第壹章．第肆回"],
    # [348, "用冥想為自己創造高潮的四個步驟"],
    # [354, "小說連載：正宮與小三的談判"],
    # [365, "【深淵】第壹章．第伍回"],
    # [367, "八個關於高潮的有趣事實"],
    # [369, "命中註定，一輩子睡別人老公"],
    # [386, "【深淵】第貳章．奈央的春天之參"],
    # [396, "小說連載：小三與正宮的正面交戰"],
    # [397, "男人的「性愛分離論」其實是種性幻想"],
    # [398, "女人快要高潮時的九個動作徵兆"],
    # [404, "浪子最愛不是上床而是牽手、擁抱和接吻？"],
    # [420, "【深淵】第貳章．第貳回"],
    # [435, "害怕失去的性"],
    # [436, "私密萬聖節派對情趣四招"],
    # [441, "愚蠢的性"],
    # [450, "令她無法抵擋的情趣用品初體驗"],
    # [470, "【深淵】第貳章．第伍回"],
    # [475, "性愛知識家：妳也是假高潮一族嗎？"],
    # [480, "六個方法讓他在約會時慾火焚身"],
    # [484, "導致性慾降低的五種食物"],
    # [492, "女生看 A 片，妳會學到的五件事"],
    # [497, "八個小事，在同居前妳一定要知道"],
    # [508, "【深淵】第參章．深淵之捌"],
    # [525, "讓他必定求饒的四招嘴上功夫"],
    # [526, "用你的雙手，輕易地讓她臣服於你"],
    # [527, "「裸睡」好處多多的五個重點"],
    # [535, "在床上的七個黃金時刻，讓愛愛更激情"],
    # [545, "同志情慾電影『湖畔春光』一窺同志生活裡的種種處境"],
    # [552, "情慾電影：『性愛成癮的女人』一探女人的性愛旅程"],
    # [575, "法國電影【美麗．誘惑】一探青少年的情慾誘惑"],
    # [590, "75% 的人說，另一半出軌後就無法再愛！"],
    # [599, "三個步驟，找到屬於妳自己的敏感帶！"],
    # [600, "2013 年，關於性愛不為人知的十個統計"],
    # [601, "2014 年，臉紅紅性愛生活調查！"],
    # [624, "女人真心話：為什麼偶而我會假裝高潮？"],
    # [639, "情慾文學：牛角下的情慾之一"],
    # [643, "【Endless Love】無盡的愛 愛情能超越世俗眼光嗎？"],
    # [649, "情慾文學：牛角下的情慾之二"],
    # [651, "情慾文學：牛角下的情慾之三"],
    # [661, "我是女生，她是女生"],
    # [667, "超過千名女性親身體驗，關於高潮的點滴快感"],
    # [675, "【深淵】第參章．第參回"],
    # [686, "男人特別喜歡在情人節做愛？三個你不知道的有趣情人節調查報告"],
    # [687, "六千名網友的真實告白！92% 台灣女人贊成婚前性行為"],
    # [689, "臉紅紅獨家揭露：台灣女人五大性愛生活關鍵報告--85% 的女人享受自慰快感"],
    # [690, "跟砲友做愛更安全？擁有砲友的 5 個好處"],
    # [691, "從早到晚都火辣的情人節約會三部曲"],
    # [701, "【性愛成癮的女人】超越尺度一睹好萊塢明星高潮畫面"],
    # [710, "如果非得跳入火坑 分手砲的 5 個建議"],
    # [717, "慾火壓不住？分辨是否有性愛成癮症的 20 個徵兆"],
    # [718, "就是喜歡打野戰！挑戰戶外性愛時必知的五件事"],
    # [722, "臉紅知識家：古代千奇百怪避孕妙招"],
    # [727, "於是他撿了隻流浪貓"],
    # [734, "八成五女性認為自己來更享受的七個理由"],
    # [735, "關於高潮，你不得不知的 9 個常識"],
    # [737, "【深淵】第參章．第肆回"],
    # [747, "那一年，偷嚐禁果的我們"],
    # [790, "粗細長短都高潮的四個性愛姿勢"],
    # [800, "臉紅紅 x StarWolrd <心機女傭> 陪妳耍心機，拿獎品"],
    # [838, "悲傷時，請勿性交：別用濫交報復分手的痛"],
    # [843, "八個問題讓妳第一次約會就看透他的心"],
    # [934, "不回應，你的激情"],
    # [1005, "《醉》深夜裡被撕裂的花"],
    # [1093, "臉紅網友聊什麼？本週最熱話題"],
    # [1104, "女人，妳的性和情慾是由自己決定嗎？"],
    # [1120, "我心甘情願，當你的小三"],
    # [1126, "聽著，女人不想做垃圾愛！"],
    # [1196, "性愛女王說：前戲可不只是為了女人！"],
    # [1241, "社會不會說！女人在開始性行為之前應該知道的事"],
    # [1266, "【情慾小說】王子的偽裝 1/3"],
    # [1284, "【情慾小說】王子的偽裝 2/3"],
    # [1297, "【情慾小說】王子的偽裝 3/3"],
    # [1298, "我不和有另一半的男人上床的原因"],
    # [1303, "情慾文學：戰地春夢 獵鯨女孩"],
    # [1308, "男人真心話：愛，就是要讓人感受的到"],
    # [1350, "網友經驗談：那話兒粗大勇猛不見得是好事"],
    # [1379, "浪子說：女生胸部幾 cup 最適中？"],
    # [1380, "情慾文學：交友 app Ashley Madison 奇遇記"],
    # [1387, "不隨便的淫蕩"],
    # [1403, "生命中曾經但無緣的光亮"],
    # [1404, "只有一夜的瘋狂放蕩"],
    # [1479, "青春少女的煩惱：妳，貞潔嗎？"],
    # [1480, "紅粉知己，一種比前女友更危險的物種"],
    # [1481, "分手後，抵擋不了的熟悉激情"],
    # [1495, "我的 BL 幻想世界"],
    # [1496, "處女情結，銘謝惠顧"],
    # [1526, "我們都忘了其實放下也是一種選擇"],
    # [1541, "情慾文學：我的異國一夜情"],
    # [1574, "不安於室！遠距離見面後的乾柴烈火"],
    # [1609, "他不是我的男朋友，也不只是床伴"],
    # [1758, "劈腿的人，最愛的其實是自己"],
    # [1832, "如果，性愛是一場報復"],
    # [1875, "親愛的，我玩完就回來"],
    # [1903, "看你從男孩成為男人，值得"],
    # [1955, "最好的姐妹，喜歡上同一個男人"],
    # [1993, "婚後的一夜情"],
    # [2003, "只做愛，不戀愛"],
    # [2015, "【girl on girl】第一眼看見妳，我就被深深吸引"],
    # [2059, "讓女人更幸福的小秘密：性幻想"],
    # [2072, "我們的愛情，留給一根菸"],
    # [2111, "愛情沒有完美，只有完整"],
    # [2169, "禁忌"],
    # [2202, "謝謝你給我的獨家誘惑"],
    # [2223, "外遇，就是巧遇的失控"],
    # [2309, "你卻說不擁有就不怕失去了"],
    # [2734, "負責高潮就好？不管用的飯飯之交守則"],
    # [2859, "那個，偷情的夜晚"],
    # [2897, "【床伴日記】第一次，下床後不再空虛"],
    # [3201, "【床伴日記】我們都害怕再次被愛拋棄"],
    # [4242, "妹妹連載：我多麼希望，你不是我的妹妹"],
    # [4320, "暗戀心事：A13 桌的你"],
    # [4458, "妹妹連載：我想做的，不只是你的哥哥"],
    # [4592, "寫給男生的秘密指南：第一次性愛你該避免的五件事"],
    # [4693, "失戀 21 天"],
    # [4796, "我是女生，我的第一次也是跟女生"],
    # [4964, "妹妹連載：那年，我們天真的幸福"],
    # [5240, "灰故娘的現代故事：午夜人妻秘戀"],
    # [6891, "【臉紅紅 x 女王哈哈愛情殿堂】哪三種男人的電話千萬不能接？"],
    # [6906, "每個女人，都是血族 - Sunny"],
    # [6966, "Ａ 先生的女王"],
    # [8438, "最美妙的情慾感官旅程：年度臉紅紅性愛生活問卷調查！"],
    # [8525, "【臉紅羞羞放映室】女生口愛的四大心酸！"],
    # [8574, "【臉紅羞羞放映室】伴侶真心話！你該修陰毛的四個原因"],
    # [8671, "【臉紅羞羞看短片】男人真心話！幫另一半口交時..."],
    # [8800, "【臉紅羞羞看短片】尺寸真的好重要？"],
    # [8867, "【臉紅羞羞看短片】要如何當一個好砲友？"],
    # [8900, "【臉紅辛辣開講】要說什麼才對？床上最常聽到的淫聲浪語"],
    # [8954, "【臉紅辛辣聊天室】每個人都該擁有！最適合自己的陰毛修剪造型"],
    # [8989, "【臉紅辛辣聊天室】那些 A 片教錯的事！"],
    # [9018, "【臉紅辛辣聊天室】在他心裡，沒說出口的「性癖好」！"],
    # [9087, "【臉紅辛辣聊天室】這些「自拍」，竟讓老外想入非非？"],
    # [9118, "【臉紅辛辣聊天室】男人要求打分手砲的四個理由"],
    # [9281, "嘿，臉紅紅有些話想跟你說"],
    # [9337, "【女人聊天室】親愛的，來拍一隻性愛影片吧？"],
    # [9382, "從小教你撫摸自己的身體！西方性教育與台灣大不同"],
    # [9418, "好濕的夜！春夢與你的狂野性幻想"],
    # [9459, "用他加妳 LINE 的方式，看穿他在床上的表現！"],
    # [9524, "女上位真的好累？三大性愛姿勢優缺點解析"],
    # [9608, "【貓女辛辣聊天室】他總是軟掉，是妳的錯嗎？"],
    # [9656, "這樣叫床好催情！做愛時呻吟的基本守則"],
    # [9698, "三個常見的「高潮」反應"],
    # [9773, "玩「3P」性愛前要注意的事！"],
    # [10199, "【鴛鴦鍋系列】後宮也有 CCR：慈禧秘密生活"],
    # [10726, "【清粥小菜系列】我罵妳我愛妳：駱賓王對武媚娘的情慾想像"],
    # [11564, "【臉紅紅深夜食堂】第一夜：我愛你，我的身體卻不愛你"],
    # [11613, "【臉紅紅深夜食堂】第二夜：幻想式性愛"],
    # [11665, "【臉紅紅深夜食堂】第三夜：寂寞是一種病嗎？"],
    # [11771, "【臉紅電台】不想直接說不要？把這份歌單送給他吧"],
    # [16468, "【影片】臉紅小編示範愛滋篩檢五步驟"],
    # [16693, "你的意見很重要！臉紅紅網站使用大調查"],
    # [19097, "【臉紅來稿】熱情邀請喜歡寫作的妳！"],
    [28612, "想要享受懷孕性愛前的九個提醒"],
    [28613, "關於懷孕性愛的四個顧慮"],
    [28617, "讓男伴超幸福的進階口交技巧教學"],
    [28625, "凱格爾運動的四種練習"],
    [28635, "享受性愛對健康有益的十個理由"],
    [28705, "想像第一次插入的那一刻"],
    [28772, "五個方法，性愛自己來！"],
    [28785, "【每日新奇】愈「小」愈驕傲的比賽"],
    [28786, "先別急著脫！穿著衣服可以讓她更有 fu"],
    [28788, "【每日新奇】第一支用 Google Glass 拍的A片"],
    [28791, "吃對更狂野！為男人催情的生蠔三吃"],
    [28801, "【慾望，無所不在】臉紅紅動態輕文學徵稿"],
    [28813, "【每日新奇】高潮比練習數獨更能活化大腦"],
    [28815, "吃對更狂野！讓男人飄飄慾仙的巧克力三吃"],
    [28817, "無法呼吸3：燃燒"],
    [28822, "五招找回情人間的熱戀激情"],
    [28828, "性愛知識家：讓復仇者聯盟拯救你的性生活！"],
    [28830, "產後更相愛！把愛找回來"],
    [28831, "女上位：熱情呼拉跨坐式"],
    [28833, "性愛知識家：讓手機評論妳的性生活！"],
    [28834, "產後更相愛！六個愛的計畫"],
    [28837, "七件關於男人高潮你不知道的事"],
    [28841, "發揮想像力，讓快感一直來！"],
    [28854, "性愛知識家：讓人好害羞的性器官飾品"],
    [28855, "這個時代的男人不愛豐胸愛小腳"],
    [28857, "性愛獨舞！學會做自己的情人"],
    [28859, "AV 女優教你令女人愉悅的脫衣秘訣"],
    [28869, "八個正確穿內衣讓胸型更美好的方法"],
    [28870, "性愛知識家：每週做愛四次以上的人比較會賺錢？"],
    [28871, "五個一定要知道的愛愛時間點"],
    [28873, "成功引誘他的五個挑逗秘技"],
    [28875, "五件最多女人感到困擾的「性事」"],
    [28877, "女上位：激愛椅子操"],
    [28878, "一定要知道的七個早晨性愛好處"],
    [28880, "產後更相愛：泌乳期間常見的三個愛愛問題"],
    [28881, "舔舔不害羞！如何享受被口交的快感？"],
    [28884, "臥室裡的五個激情性遊戲"],
    [28888, "令女人渴望的私處撫摸法"],
    [28889, "五個方法提高妳的性慾"],
    [28890, "情慾文學：半小時的慾望台北"],
    [28891, "關於女人，你該知道的 20 件事"],
    [28893, "性愛知識家：私密處也能享受高級 SPA"],
    [28895, "性愛知識家：八個關於女性私處的有趣事實"],
    [28897, "日本第一男優加藤鷹傳授性愛邀約秘技"],
    [28898, "關於 Ex，男人女人想的不一樣"],
    [28902, "性愛知識家：原來男人也會假高潮？"],
    [28903, "【深淵】第貳章．第壹回"],
    [28905, "【主題徵文比賽】最難忘的星座男人故事"],
    [28908, "性愛知識家：大英博物館展出百件日本春宮藝術品"],
    [28910, "三個隨時都能享受的激情小遊戲"],
    [28911, "一輩子只跟一個人做愛不會膩嗎？"],
    [28912, "【Star World x 臉紅紅】 全新影集獵艷情人尋找妳最重要的姊妹情人！"],
    [28915, "小空間玩出大高潮！迷人車震性愛：防爆氣球式"],
    [28918, "女人信箱：為什麼男人那麼喜歡女人在床上叫出聲？"],
    [28919, "【臉紅紅看電影】解開第一顆扣子，成就一世經典《A 片女神 深喉嚨》"],
    [28920, "星座男人故事：雙魚座的浪漫"],
    [28922, "五個令男人慾火焚身的情慾小遊戲"],
    [28923, "【深淵】第貳章．第參回"],
    [28926, "浪子教妳/你如何第一次潮吹就上手-前篇"],
    [28927, "浪子教妳/你如何第一次潮吹就上手-後篇"],
    [28928, "精神性關係 / 1 / 室友"],
    [28930, "玩咖的情慾告白：遇見再美的女人都不會滿足"],
    [28931, "關於潮吹，女人的真心話！"],
    [28935, "令男人在床上倒胃口的六件事情"],
    [28938, "性愛知識家：法國有趣廣告，隱喻不戴保險套的男人是..."],
    [28943, "性愛知識家：大屁股帶來的性福多更多"],
    [28948, "我與小阿姨的那段日子"],
    [28951, "【臉紅紅 x 女人迷】邀妳選出 2013 年最引人遐想的性感男星"],
    [28957, "『我是處女，但我很驕傲』處女的情慾獨白"],
    [28963, "“ONE LIFE, MULTIPLE PASTS” 加拿大創意情慾平面廣告"],
    [28964, "臉紅新鮮事：當王子脫下衣裳時的雄偉"],
    [28967, "關於分手，你該學到的七件事！"],
    [28968, "婚外情網站 Ashley Madison 創辦人說：女人維繫婚姻的關鍵是「外遇」"],
    [28969, "上床後最後悔的事，男女真心話大解密"],
    [28971, "關於接吻這檔事，他與她真正的心裡話是..."],
    [28986, "三個小動作，讓妳的男人更興奮"],
    [28988, "【深淵】第參章．第壹回"],
    [28991, "前戲姿勢新體驗：令妳快感加倍的『分進合擊式』"],
    [28993, "關於妳的陰毛，男人怎麼說"],
    [28995, "專業藥師，解答妳對『事後』避孕藥的困惑"],
    [28997, "避免三件事，讓妳的早晨性愛更美好"],
    [29001, "真心大揭曉：男人在床上最害怕的五件事"],
    [29002, "色誘耶誕節！使出大絕招，從頭到腳教妳如何擺平他"],
    [29003, "這七種性愛姿勢，堪稱最怪，但大家最愛！"],
    [29004, "專業藥師告訴妳，月經前須知道的九件事"],
    [29011, "臉紅知識家：超級臉紅心跳的『中國古代春宮圖』"],
    [29012, "【深淵】第參章．第貳回"],
    [29013, "臉紅知識家：精子能不能吃？臉紅疑團大解惑"],
    [29015, "臉紅知識家：五大壞習慣，讓妳的胸部變小及變形"],
    [29017, "女人真心話：我內心的六大渴望"],
    [29019, "請記得，別人的感情，不能等"],
    [29020, "浪子說：男人有了女友/老婆/床伴，為什麼還要看 A 片？"],
    [29035, "六招高級調情法，幫妳擄獲他的心！"],
    [29045, "六個方法讓妳的性愛技巧步步高昇"],
    [29047, "浪子說：一個晚上到底是能射幾次？"],
    [29048, "早洩的真相與讓男人慢點射的五個方法"],
    [29057, "臉紅知識家：原來幸福夫妻的性生活通常不滿足"],
    [29058, "遠離性冷感！這五個目標一定要達到"],
    [29064, "性愛姿勢：『箭在弦上』高潮不得不發"],
    [29071, "性愛姿勢：『愛的圈圈』圈住Ｇ點讓她慾罷不能"],
    [29076, "床照曝光！？明星與床鋪的親密接觸攝影"],
    [29081, "找到妳的香氣密碼 談身體想要的戀愛"],
    [29083, "迫不及待想要愛，懷孕後性愛的3個常見問題"],
    [29084, "性愛姿勢：『邊際交會』擦出浪蕩火花"],
    [29087, "非看不可 2014 奧斯卡入圍情慾電影"],
    [29091, "讓他忘不了妳的聲音！五步驟展開激情電愛"],
    [29092, "女人信箱：身材重要？還是技巧重要？"],
    [29093, "“suck it” 不等於口交！口交正確英文應該這樣說"],
    [29098, "肛交一定要注意的安全事項，與讓自己舒服的七個方法"],
    [29103, "痛與愉悅的極致快感！體驗 SM 的入門五招"],
    [29116, "做越多越好！做愛讓你更健康的五個優點"],
    [29121, "愛愛時不放空，四個方法讓妳直達高潮"],
    [29139, "AV 女優真心話：微胖才是真性感"],
    [29140, "大陸最火紅 90 後語錄！女人不是等著被寵幸的妃子"],
    [29144, "帥到流鼻血！格雷的五十道陰影電影劇照大公開"],
    [29149, "令男人眼神離不開妳的五個小心機"],
    [29150, "女人信箱：做愛時令女人呻吟的三個原因"],
    [29159, "同居前妳該思考的五個問題"],
    [29161, "性愛知識家：每週愛愛幾次才正常？"],
    [29162, "一次掌握，讓人又愛又恨的潮吹"],
    [29166, "女人真心話：為什麼我不愛口交？"],
    [29169, "再來一次！幫你告別陰道乾乾的愛愛三招"],
    [29171, "關於性愛，20、30、40 世代的女人這麼說"],
    [29172, "悲傷時，請勿性交：別用濫交報復分手的痛（二）"],
    [29175, "單身告別式"],
    [29179, "讓妳不累，輕輕鬆鬆享受女上位激情快感"],
    [29184, "【深淵】第肆章．深淵之拾"],
    [29185, "一切都毀了！只因做愛後你沒有抱抱她"],
    [29186, "闖紅燈也不怕！享受經期性愛的五個步驟"],
    [29187, "性感慾女的告白：喝醉後該不該上床？"],
    [29189, "不想被撿屍，五個你該知道的一夜情潛規則"],
    [29192, "最後一夜的瘋狂！男人單身派對玩什麼？"],
    [29193, "網友臉紅信箱：高潮來了怎麼叫？"],
    [29195, "性愛姿勢：今晚，當個壞女孩"],
    [29203, "男人真心話：那話兒的尺寸真的很重要"],
    [29204, "學會這九招，妳也能自己定義性感"],
    [29205, "專業藥師告訴妳，避孕方法到底有幾種？"],
    [29211, "網友真心話：最讓人慾火焚身的前戲是？"],
    [29212, "失身，如同一朵在暗夜裡凋零的花"],
    [29218, "網友真心話：第一次牽手比做愛更甜蜜"],
    [29221, "他不帶妳見父母，就代表不愛妳？"],
    [29226, "女人真心話：女人為什麼會出軌/偷吃？"],
    [29231, "【深淵】第肆章．第壹回：3P 的邀請"],
    [29236, "女人高潮有四種，妳試過幾種？"],
    [29250, "性愛，有時只是場遊戲"],
    [29254, "她用千萬賣初夜！挑戰社會對第一次的刻板印象"],
    [29256, "女人的第一次，男人會不會怕？"],
    [29257, "男人也常假高潮！六個妳不知道的男人性愛秘密"],
    [29261, "我曾害怕性愛，但我的第一次選擇全心投入"],
    [29265, "讓女人放下心房的前戲四招"],
    [29266, "第一次的親密接觸，5 個祕訣讓妳擁有難忘的一夜"],
    [29273, "產後重開機！懷孕後性愛的五個秘密"],
    [29274, "【深淵】第肆章．第貳回：出軌？！"],
    [29275, "女人寂寞的從不是身體，而是心"],
    [29281, "真心相愛的那一次，才是第一次"],
    [29282, "淫聲浪語讓他更愛妳！枕邊細語絕招大公開"],
    [29288, "性愛知識家：研究顯示，性生活頻率高於身邊的朋友讓你更快樂？"],
    [29291, "主動挑逗他！喚起他內心小野獸的四個方法"],
    [29292, "令人嚇一跳！關於「偷吃」的真實調查報告"],
    [29296, "性生活一成不變？四個小祕訣激活你們的熱戀激情"],
    [29299, "關於上床，男人其實想很多..."],
    [29301, "該跟他約會嗎？六個和朋友的 EX 約會必知守則"],
    [29302, "床上男女不平等？當個床上的大女人！"],
    [29303, "只有在歡愛的這一刻，我才能忠於自己"],
    [29305, "出其不意挑逗他！背後進攻循序漸進五重點"],
    [29306, "做好這五個準備，第一次野戰就上手！"],
    [29311, "酒與性的微妙關係"],
    [29312, "妳一點都不怪！女人都會有的性愛 NG 片刻"],
    [29313, "妳談的是「自由戀愛」還是「社會戀愛」？"],
    [29314, "鐘點情人：我在性裡，交換愛"],
    [29317, "妳的自信，決定妳最美的姿態"],
    [29319, "分手，不是妳人生的盡頭"],
    [29322, "30 歲以後，愛上一夜情"],
    [29325, "網友真心話：我的性愛初體驗"],
    [29326, "一個悲傷的故事：別等到滿身傷痕，才懂"],
    [29329, "性愛知識家：一天一蘋果，愛愛更美好"],
    [29332, "性愛知識家：睡不好嗎？找個伴一起睡吧！"],
    [29345, "分手的最後激情"],
    [29348, "情慾文學：1091 我給他的代號"],
    [29354, "Let Us Make A Forever Love"],
    [29355, "Let Us Make A Forever Love：蘭花與樹木的同棲生活"],
    [29359, "在婚外情之前，青澀的初體驗"],
    [29360, "我愛你給的愉虐"],
    [29361, "性愛姿勢：如美人魚般交纏的水中熱愛五招"],
    [29364, "男人在 Motel 表現比較好？摩鐵愛愛的五大理由！"],
    [29365, "當「告白」成為拒絕的藉口"],
    [29377, "鯨魚的回聲定位理論"],
    [29380, "情慾文學：那個「口愛」的女孩"],
    [29391, "尺寸「大小」不重要！任何尺寸都能命中 G 點的性愛姿勢破解"],
    [29398, "男人，也會有做愛後動物感傷"],
    [29400, "男人真心話：噓，我們在床上的五個秘密欲望"],
    [29403, "女人真心話：做了一場糟糕愛之後，我們心中的殘酷告白"],
    [29404, "從哪一天開始，你忘了說愛我？"],
    [29405, "一個總是花錢買性的男人"],
    [29407, "一個乖女孩的壞故事，愛不愛重要嗎？"],
    [29410, "我們是愛人，不是罪人"],
    [29411, "女人們，想跟處男交往嗎？"],
    [29413, "第一次自己來！22 歲處女的情慾日誌"],
    [29414, "牽手，說愛我"],
    [29440, "享受性的美好！高達七成台灣女性有自慰經驗"],
    [29453, "《秘密系列》情慾連載：讓人欲罷不能的，陌生人"],
    [29460, "如果時間能夠重來，你還會不會愛我？"],
    [29461, "法國人無可救藥的浪漫與性技巧，爸爸教的？"],
    [29463, "嘿，不要急著說愛我"],
    [29465, "感謝有臉紅紅，昨晚有了三年來最棒的性愛"],
    [29466, "是誰說襲胸無罪，好色有理？"],
    [29467, "最後的身體依戀！分手砲的三個動機"],
    [29473, "【Lesbian Talk】和女孩做愛後，我從此上了癮"],
    [29481, "第一次誘惑男人就上鉤"],
    [29518, "你愛我，我也愛你的機率"],
    [29550, "多久沒約自己做愛了？自慰前需要的五個前戲"],
    [29551, "我們沒有在一起，可是我卻愛上你"],
    [29552, "讓男人射的是「摩擦」，但讓男人絕對硬起來的是「想像」"],
    [29568, "寫給男人的真心指南：技巧比大小重要！四招提升性愛技巧"],
    [29594, "Ｃ先生的鏡子"],
    [29827, "懷孕也要高潮：給孕媽咪的性愛體位與飲食建議"],
  ]

  images = []
  Dir.glob('public/images/lhh-covers/*').each do |path|
    images << MiniMagick::Image.open(path)
  end

  list.each_with_index do |(id, title), i|
    base_image = images[i%13]
    position = 0
    height = 65
    filename = "#{id}.jpg"

    title1, title2 = title.chars.each_slice(19).map(&:join)
    if title2 != nil
      if title.include?("：") && (id != 29020) && (id != 29288)
        title1, title2 = title.lines("：")

        if (title2.size > 19) && (id != 1380) && (id != 28938)
          title1, title2 = title.chars.each_slice(19).map(&:join)
        end
      elsif title.include?(">")
        title1, title2 = title.lines(">")
      elsif title.include?("，")
        array = title.lines("，")
        title2 = array.pop
        title1 = array.join
      elsif title.include?("？")
        title1, title2 = title.lines("？")

        if title1.size > 19
          title1, title2 = title.chars.each_slice(19).map(&:join)
        end
      elsif title.include?("！") && !title.end_with?("！")
        title1, title2 = title.lines("！")
      elsif title.include?("】") && (id == 28951)
        title1, title2 = title.lines("】")
      elsif title.include?("”") && (id == 28963)
        title1, title2 = title.lines("”")
      elsif (id == 194) || (id == 314) || (id == 28788) || (id == 29354)
        title1 = "#{title1}#{title2}"
        title2 = nil
      end

      foldersize = '2'

      if title2.nil?
        draw_text1 = "text 0,#{position + height * 0} '#{title1}'"
      else
        draw_text1 = "text 0,#{position + height * 1} '#{title1}'"
        draw_text2 = "text 0,#{position + height * 0} '#{title2}'"
      end
    else
      foldersize = '1'
      draw_text1 = "text 0,#{position + height * 0} '#{title1}'"
    end

    base_image.write("public/quotes/#{foldersize}/#{filename}")
    image = MiniMagick::Image.open("public/quotes/#{foldersize}/#{filename}")

    image.combine_options do |c|
      c.font "fonts/NotoSansCJKtc-Bold.otf"
      c.weight "700"
      c.pointsize "60"
      c.gravity "SouthEast"

      c.fill "#B22"
      c.undercolor "#FFF"
      c.draw draw_text1
      c.draw draw_text2 if draw_text2
    end

    image.write("public/quotes/#{foldersize}/#{filename}")
  end
end
