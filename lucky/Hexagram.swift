import Foundation

// 卦象结构体
struct Hexagram {
    let number: Int
    let name: String
    let description: String
    let meaning: String
    let goodFor: [String]
    let badFor: [String]
    
    static let allHexagrams: [Hexagram] = [
        Hexagram(
            number: 1,
            name: "乾卦",
            description: "乾为天",
            meaning: "刚健中正，充满活力与创造力。象征领导者，开创者的品质",
            goodFor: ["开始新项目", "领导决策", "创业", "求职升迁", "规划未来"],
            badFor: ["冒进", "过于急躁", "独断专行"]
        ),
        Hexagram(
            number: 2,
            name: "坤卦",
            description: "坤为地",
            meaning: "包容厚德，顺从适应。象征沉稳、包容与承载",
            goodFor: ["稳健发展", "积累经验", "培养关系", "储蓄理财", "学习"],
            badFor: ["贸然行动", "投机冒险", "改变现状"]
        ),
        Hexagram(
            number: 3,
            name: "屯卦",
            description: "水雷屯",
            meaning: "始生难也。事物初始阶段，充满困难与挑战",
            goodFor: ["谋划开始", "培育新事物", "储备能量", "稳扎稳打"],
            badFor: ["轻举妄动", "急于求成", "冒险投资"]
        ),
        Hexagram(
            number: 4,
            name: "蒙卦",
            description: "山水蒙",
            meaning: "启蒙渐进，如雾渐明。表示学习与成长的过程",
            goodFor: ["求学进修", "请教长者", "基础训练", "循序渐进"],
            badFor: ["急于求成", "自以为是", "投机取巧"]
        ),
        Hexagram(
            number: 5,
            name: "需卦",
            description: "水天需",
            meaning: "等待时机，修身养性。表示耐心等待与充实自我",
            goodFor: ["修身养性", "等待机会", "充实自我", "谋定后动"],
            badFor: ["急躁冒进", "贸然行动", "投机取巧"]
        ),
        Hexagram(
            number: 6,
            name: "讼卦",
            description: "天水讼",
            meaning: "争讼难解，慎重处理。提醒避免冲突与纠纷",
            goodFor: ["调解纠纷", "明辨是非", "谨慎行事", "和解沟通"],
            badFor: ["激化矛盾", "贸然诉讼", "固执己见"]
        ),
        Hexagram(
            number: 7,
            name: "师卦",
            description: "地水师",
            meaning: "统领群伍，整齐划一。象征组织与纪律",
            goodFor: ["组织管理", "建立制度", "团队合作", "军事行动"],
            badFor: ["独断专行", "违反纪律", "贸然行动"]
        ),
        Hexagram(
            number: 8,
            name: "比卦",
            description: "水地比",
            meaning: "亲近联合，和睦相处。表示团结与合作",
            goodFor: ["建立联盟", "寻求合作", "交友结盟", "增进感情"],
            badFor: ["独善其身", "排斥异己", "结党营私"]
        ),
        Hexagram(
            number: 9,
            name: "小畜卦",
            description: "风天小畜",
            meaning: "蓄养待进，循序渐进。表示积累与储备",
            goodFor: ["积累实力", "储备资源", "修身养性", "稳步发展"],
            badFor: ["贸然行动", "急于求成", "过度消耗"]
        ),
        Hexagram(
            number: 10,
            name: "履卦",
            description: "天泽履",
            meaning: "谨慎而行，循规蹈矩。强调遵守规范",
            goodFor: ["谨慎行事", "遵守规则", "稳健前进", "注意礼节"],
            badFor: ["违规冒进", "僭越礼制", "轻慢上级"]
        ),
        Hexagram(
            number: 11,
            name: "泰卦",
            description: "地天泰",
            meaning: "通达和顺，万物亨通。象征昌盛与和谐",
            goodFor: ["开展事业", "人际交往", "投资理财", "婚恋交友"],
            badFor: ["固步自封", "骄傲自满", "过度乐观"]
        ),
        Hexagram(
            number: 12,
            name: "否卦",
            description: "天地否",
            meaning: "闭塞不通，万物否塞。表示阻滞与困难",
            goodFor: ["总结经验", "修身养性", "避免冒险", "韬光养晦"],
            badFor: ["贸然行动", "强行推进", "投机取巧"]
        ),
        Hexagram(
            number: 13,
            name: "同人卦",
            description: "天火同人",
            meaning: "志同道合，和睦共处。表示团结与合作",
            goodFor: ["建立联盟", "团队合作", "社交活动", "开展合作"],
            badFor: ["独断专行", "排斥异己", "过于依赖他人"]
        ),
        Hexagram(
            number: 14,
            name: "大有卦",
            description: "火天大有",
            meaning: "丰盛光明，前途广大。象征收获与成就",
            goodFor: ["扩大规模", "投资发展", "开拓市场", "争取机会"],
            badFor: ["骄傲自满", "盲目扩张", "奢侈浪费"]
        ),
        Hexagram(
            number: 15,
            name: "谦卦",
            description: "地山谦",
            meaning: "谦逊虚心，内敛有德。强调谦虚的重要",
            goodFor: ["稳健发展", "学习进取", "待人谦和", "改善关系"],
            badFor: ["自傲自大", "好高骛远", "急于表现"]
        ),
        Hexagram(
            number: 16,
            name: "豫卦",
            description: "雷地豫",
            meaning: "愉悦和顺，喜乐之象。表示快乐与满足",
            goodFor: ["娱乐休闲", "社交活动", "庆典活动", "享受生活"],
            badFor: ["沉迷享乐", "玩物丧志", "放纵自我"]
        ),
        Hexagram(
            number: 17,
            name: "随卦",
            description: "泽雷随",
            meaning: "随顺时势，柔顺适应。象征适应与跟随",
            goodFor: ["顺应变化", "调整策略", "配合他人", "随机应变"],
            badFor: ["固执己见", "逆势而为", "盲目跟从"]
        ),
        Hexagram(
            number: 18,
            name: "蛊卦",
            description: "山风蛊",
            meaning: "整治混乱，革新改革。表示改革与重整",
            goodFor: ["整顿改革", "处理难题", "革新创新", "改正错误"],
            badFor: ["因循守旧", "回避问题", "急于求成"]
        ),
        Hexagram(
            number: 19,
            name: "临卦",
            description: "地泽临",
            meaning: "临近观察，体察入微。强调观察与管理",
            goodFor: ["监督管理", "考察调研", "关注细节", "制定规划"],
            badFor: ["疏于管理", "忽视细节", "轻率决策"]
        ),
        Hexagram(
            number: 20,
            name: "观卦",
            description: "风地观",
            meaning: "观察形势，以待时机。表示观察与等待",
            goodFor: ["观察局势", "等待时机", "深入研究", "审时度势"],
            badFor: ["轻举妄动", "盲目行动", "不察形势"]
        ),
        Hexagram(
            number: 21,
            name: "噬嗑卦",
            description: "火雷噬嗑",
            meaning: "决断果断，雷厉风行。象征决断与执行",
            goodFor: ["果断决策", "执行计划", "处理问题", "改革创新"],
            badFor: ["优柔寡断", "犹豫不决", "过于激进"]
        ),
        Hexagram(
            number: 22,
            name: "贲卦",
            description: "山火贲",
            meaning: "美丽富贵，外表美好。表示外在美好",
            goodFor: ["美容保健", "装饰美化", "社交活动", "提升形象"],
            badFor: ["过于注重外表", "忽视内在", "虚假表象"]
        ),
        Hexagram(
            number: 23,
            name: "剥卦",
            description: "山地剥",
            meaning: "剥落脱离，事物衰退。表示衰退与脱离",
            goodFor: ["放弃不良习惯", "改正错误", "脱离困境", "重新开始"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 24,
            name: "复卦",
            description: "地雷复",
            meaning: "复归原位，事物复苏。表示复苏与恢复",
            goodFor: ["恢复元气", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 25,
            name: "无妄卦",
            description: "天雷无妄",
            meaning: "无妄之灾，慎重避免。表示避免灾难",
            goodFor: ["谨慎行事", "避免风险", "小心谨慎", "防患未然"],
            badFor: ["冒险蛮干", "轻率决策", "忽视风险"]
        ),
        Hexagram(
            number: 26,
            name: "大畜卦",
            description: "山天大畜",
            meaning: "大有收获，事业兴隆。象征收获与成功",
            goodFor: ["扩大事业", "投资发展", "开拓市场", "争取机会"],
            badFor: ["骄傲自满", "盲目扩张", "奢侈浪费"]
        ),
        Hexagram(
            number: 27,
            name: "颐卦",
            description: "山雷颐",
            meaning: "养育长大，事物成长。表示成长与发展",
            goodFor: ["培养人才", "发展事业", "学习进取", "成长发展"],
            badFor: ["忽视成长", "不注重发展", "固步自封"]
        ),
        Hexagram(
            number: 28,
            name: "大过卦",
            description: "泽风大过",
            meaning: "过度放纵，事物失调。表示过度与失调",
            goodFor: ["纠正错误", "改善关系", "调整策略", "避免过度"],
            badFor: ["过度放纵", "失调失控", "继续错误"]
        ),
        Hexagram(
            number: 29,
            name: "坎卦",
            description: "坎为水",
            meaning: "险阻重重，事物困难。表示困难与险阻",
            goodFor: ["谨慎行事", "避免风险", "小心谨慎", "防患未然"],
            badFor: ["冒险蛮干", "轻率决策", "忽视风险"]
        ),
        Hexagram(
            number: 30,
            name: "离卦",
            description: "离为火",
            meaning: "光明美好，事物昌盛。象征光明与昌盛",
            goodFor: ["开展事业", "人际交往", "投资理财", "婚恋交友"],
            badFor: ["固步自封", "骄傲自满", "过度乐观"]
        ),
        Hexagram(
            number: 31,
            name: "咸卦",
            description: "泽山咸",
            meaning: "感应和谐，事物相应。表示感应与和谐",
            goodFor: ["人际交往", "建立关系", "感应和谐", "相互理解"],
            badFor: ["缺乏感应", "不和谐", "相互不理解"]
        ),
        Hexagram(
            number: 32,
            name: "恒卦",
            description: "雷风恒",
            meaning: "恒久长存，事物长久。表示长久与恒久",
            goodFor: ["长期规划", "恒久不变", "坚持不懈", "长期发展"],
            badFor: ["短视近利", "变化无常", "缺乏恒心"]
        ),
        Hexagram(
            number: 33,
            name: "遁卦",
            description: "天山遁",
            meaning: "退避隐匿，避免冲突。表示退避与隐匿",
            goodFor: ["避免冲突", "退一步海阔天空", "隐匿避祸", "暂避锋芒"],
            badFor: ["硬碰硬", "强行对抗", "不肯退让"]
        ),
        Hexagram(
            number: 34,
            name: "大壮卦",
            description: "雷天大壮",
            meaning: "强壮有力，事物兴隆。象征强壮与兴隆",
            goodFor: ["扩大事业", "投资发展", "开拓市场", "争取机会"],
            badFor: ["骄傲自满", "盲目扩张", "奢侈浪费"]
        ),
        Hexagram(
            number: 35,
            name: "晋卦",
            description: "火地晋",
            meaning: "进步晋升，事物发展。表示进步与晋升",
            goodFor: ["晋升发展", "进步成长", "学习进取", "事业成功"],
            badFor: ["停滞不前", "不注重发展", "固步自封"]
        ),
        Hexagram(
            number: 36,
            name: "明夷卦",
            description: "地火明夷",
            meaning: "光明受损，事物不明。表示光明受损",
            goodFor: ["恢复光明", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 37,
            name: "家人卦",
            description: "风火家人",
            meaning: "家庭和睦，事物安定。表示家庭与和睦",
            goodFor: ["家庭和睦", "事业发展", "人际关系", "家庭幸福"],
            badFor: ["家庭不和", "事业不顺", "人际关系紧张"]
        ),
        Hexagram(
            number: 38,
            name: "睽卦",
            description: "火泽睽",
            meaning: "矛盾对立，事物不睦。表示矛盾与对立",
            goodFor: ["调解矛盾", "改善关系", "和解沟通", "化解冲突"],
            badFor: ["激化矛盾", "固执己见", "继续冲突"]
        ),
        Hexagram(
            number: 39,
            name: "蹇卦",
            description: "山水蹇",
            meaning: "困难阻碍，事物不畅。表示困难与阻碍",
            goodFor: ["克服困难", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 40,
            name: "解卦",
            description: "雷水解",
            meaning: "解除困难，事物解脱。表示解脱与解除",
            goodFor: ["解除困难", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 41,
            name: "损卦",
            description: "山泽损",
            meaning: "减少损失，事物损伤。表示损失与减少",
            goodFor: ["减少损失", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 42,
            name: "益卦",
            description: "风雷益",
            meaning: "增加益处，事物增益。表示增益与增加",
            goodFor: ["增加益处", "改善关系", "重新开始", "复兴事业"],
            badFor: ["固执不改", "回避问题", "继续错误"]
        ),
        Hexagram(
            number: 43,
            name: "夬卦",
            description: "泽天夬",
            meaning: "决断果断，事物决裂。表示决断与决裂",
            goodFor: ["果断决策", "执行计划", "处理问题", "改革创新"],
            badFor: ["优柔寡断", "犹豫不决", "过于激进"]
        ),
        Hexagram(
            number: 44,
            name: "姤卦",
            description: "天风姤",
            meaning: "相遇相交，事物相应。表示相遇与相应",
            goodFor: ["人际交往", "建立关系", "感应和谐", "相互理解"],
            badFor: ["缺乏感应", "不和谐", "相互不理解"]
        ),
        Hexagram(
            number: 45,
            name: "萃卦",
            description: "泽地萃",
            meaning: "聚集汇合，事物聚集。表示聚集与汇合",
            goodFor: ["团队合作", "集中力量", "共同发展", "群策群力"],
            badFor: ["独断专行", "分散力量", "各自为政"]
        ),
        Hexagram(
            number: 46,
            name: "升卦",
            description: "地风升",
            meaning: "上升发展，事物上进。表示上升与发展",
            goodFor: ["升迁发展", "事业进步", "学习进取", "向上发展"],
            badFor: ["停滞不前", "固步自封", "不思进取"]
        ),
        Hexagram(
            number: 47,
            name: "困卦",
            description: "泽水困",
            meaning: "困难重重，事物受困。表示困难与受困",
            goodFor: ["克服困难", "改善处境", "寻求帮助", "稳健前行"],
            badFor: ["盲目冒进", "独断专行", "固执己见"]
        ),
        Hexagram(
            number: 48,
            name: "井卦",
            description: "水风井",
            meaning: "滋养供给，事物供应。表示滋养与供给",
            goodFor: ["培养人才", "改善关系", "互帮互助", "稳定发展"],
            badFor: ["自私自利", "独善其身", "忽视他人"]
        ),
        Hexagram(
            number: 49,
            name: "革卦",
            description: "泽火革",
            meaning: "改革变革，事物更新。表示改革与变革",
            goodFor: ["改革创新", "更新观念", "突破常规", "开拓进取"],
            badFor: ["因循守旧", "固步自封", "抗拒变化"]
        ),
        Hexagram(
            number: 50,
            name: "鼎卦",
            description: "火风鼎",
            meaning: "器物更新，事物改进。表示更新与改进",
            goodFor: ["革新改造", "更新设备", "改善条件", "提升品质"],
            badFor: ["守旧不变", "固守陈规", "拒绝改进"]
        ),
        Hexagram(
            number: 51,
            name: "震卦",
            description: "震为雷",
            meaning: "震动惊醒，事物振奋。表示震动与振奋",
            goodFor: ["开创新局", "振奋精神", "果断行动", "突破困境"],
            badFor: ["优柔寡断", "畏首畏尾", "犹豫不决"]
        ),
        Hexagram(
            number: 52,
            name: "艮卦",
            description: "艮为山",
            meaning: "稳重停止，事物止息。表示停止与止息",
            goodFor: ["稳健发展", "适可而止", "审时度势", "沉着冷静"],
            badFor: ["贸然行动", "盲目前进", "不知节制"]
        ),
        Hexagram(
            number: 53,
            name: "渐卦",
            description: "风山渐",
            meaning: "循序渐进，事物发展。表示渐进与发展",
            goodFor: ["稳步前进", "循序渐进", "按部就班", "持续发展"],
            badFor: ["急于求成", "冒进冒险", "操之过急"]
        ),
        Hexagram(
            number: 54,
            name: "归妹卦",
            description: "雷泽归妹",
            meaning: "婚姻嫁娶，事物归属。表示归属与婚姻",
            goodFor: ["婚恋交友", "建立关系", "寻找归属", "确定方向"],
            badFor: ["独断专行", "随意改变", "轻率决定"]
        ),
        Hexagram(
            number: 55,
            name: "丰卦",
            description: "雷火丰",
            meaning: "丰富盛大，事物丰盛。表示丰富与盛大",
            goodFor: ["扩大发展", "投资理财", "开拓市场", "把握机遇"],
            badFor: ["盲目扩张", "奢侈浪费", "不知节制"]
        ),
        Hexagram(
            number: 56,
            name: "旅卦",
            description: "火山旅",
            meaning: "旅行漂泊，事物流动。表示旅行与流动",
            goodFor: ["出行旅游", "改换环境", "寻求机会", "开拓视野"],
            badFor: ["固守一地", "安于现状", "拒绝变化"]
        ),
        Hexagram(
            number: 57,
            name: "巽卦",
            description: "巽为风",
            meaning: "顺从谦逊，事物顺遂。表示顺从与谦逊",
            goodFor: ["谦逊待人", "顺势而为", "调和关系", "化解矛盾"],
            badFor: ["刚愎自用", "逆势而为", "固执己见"]
        ),
        Hexagram(
            number: 58,
            name: "兑卦",
            description: "兑为泽",
            meaning: "喜悦和悦，事物愉快。表示喜悦与和悦",
            goodFor: ["社交活动", "娱乐休闲", "享受生活", "增进感情"],
            badFor: ["沉迷享乐", "放纵自我", "忽视责任"]
        ),
        Hexagram(
            number: 59,
            name: "涣卦",
            description: "风水涣",
            meaning: "分散涣散，事物分离。表示分散与涣散",
            goodFor: ["调整方向", "重新规划", "分散投资", "避免风险"],
            badFor: ["盲目集中", "固守一处", "不知变通"]
        ),
        Hexagram(
            number: 60,
            name: "节卦",
            description: "水泽节",
            meaning: "节制适度，事物节约。表示节制与节约",
            goodFor: ["节约资源", "控制支出", "适度发展", "量力而行"],
            badFor: ["奢侈浪费", "过度消费", "不知节制"]
        ),
        Hexagram(
            number: 61,
            name: "中孚卦",
            description: "风泽中孚",
            meaning: "诚信中正，事物诚实。表示诚信与中正",
            goodFor: ["建立信用", "发展关系", "诚信经营", "稳健前进"],
            badFor: ["欺诈欺骗", "失信违约", "投机取巧"]
        ),
        Hexagram(
            number: 62,
            name: "小过卦",
            description: "雷山小过",
            meaning: "稍有过失，事物轻微。表示过失与轻微",
            goodFor: ["谨慎行事", "改正错误", "避免过失", "稳健发展"],
            badFor: ["重大过失", "错误决策", "盲目行动"]
        ),
        Hexagram(
            number: 63,
            name: "既济卦",
            description: "水火既济",
            meaning: "成功完成，事物圆满。表示成功与圆满",
            goodFor: ["完成目标", "实现理想", "取得成功", "圆满结束"],
            badFor: ["骄傲自满", "固步自封", "停滞不前"]
        ),
        Hexagram(
            number: 64,
            name: "未济卦",
            description: "火水未济",
            meaning: "尚未完成，继续努力。表示未完成状态",
            goodFor: ["总结经验", "完善计划", "调整方向", "持续努力"],
            badFor: ["半途而废", "急于求成", "放弃希望"]
        )
    ]
}
