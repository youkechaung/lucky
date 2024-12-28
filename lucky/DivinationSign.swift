import Foundation

struct DivinationSign {
    let number: Int          // 签号
    let title: String       // 签题
    let poem: String        // 签诗
    let explanation: String // 解签
    let fortune: String     // 运势等级（上上、上、中上、中、中下、下）
    let advice: String      // 建议
}

class DivinationSignData {
    static let signs: [DivinationSign] = [
        DivinationSign(
            number: 1,
            title: "第一签 天命不可违",
            poem: "天命不可违，强求亦徒然。\n顺其自然者，终得见光明。",
            explanation: "此签暗示顺其自然，不要强求事情的发生，尤其在命运面前，人力是有限的。凡事顺其自然，等待合适的时机，结果会更加顺利。",
            fortune: "中上",
            advice: "顺其自然、耐心等待、修身养性"
        ),
        DivinationSign(
            number: 2,
            title: "第二签 山重水复",
            poem: "山重水复疑无路，柳暗花明又一村。\n坚持信念向前行，必有转机在眼前。",
            explanation: "暗示目前处于困境之中，前路似乎迷茫，但若坚持下去，必有转机。此签属于'困境中的希望'，提醒求问者不要轻易放弃，困难会过去。",
            fortune: "中",
            advice: "坚持不懈、耐心等待、寻求突破"
        ),
        DivinationSign(
            number: 3,
            title: "第三签 天高地迥",
            poem: "天高地迥，觉宇宙之无穷。\n心怀壮志，终可达远方。",
            explanation: "此签意味着无论遇到多大的挑战，天高地广，宇宙无穷，机会与希望总是存在的。它鼓励求问者保持胸怀开阔，积极向前。",
            fortune: "上",
            advice: "开拓进取、放眼未来、谋划远景"
        ),
        DivinationSign(
            number: 4,
            title: "第四签 事事无常",
            poem: "事事无常，急不成，耐心等待。\n静待花开，自有佳音至。",
            explanation: "此签提醒求问者在目前的困境中，切勿急躁，耐心等待时机的到来。事物的发展常常是波动的，保持冷静，最终会见到曙光。",
            fortune: "中",
            advice: "冷静观察、耐心等待、稳步前进"
        ),
        DivinationSign(
            number: 5,
            title: "第五签 雷霆风暴",
            poem: "雷霆风暴，必有转机。\n一时困厄，终将化解。",
            explanation: "此签的意思是虽然现在面临着一些大的挑战或困难，但这些困难是暂时的，风暴过后，必有转机。",
            fortune: "中上",
            advice: "沉着应对、坚持不懈、把握机遇"
        ),
        DivinationSign(
            number: 6,
            title: "第六签 春风得意",
            poem: "春风得意满园新，万物复苏展生机。\n时运正好趁势进，一举成名在此时。",
            explanation: "此签预示着大好的机遇即将到来，如同春天万物复苏一般充满生机。当前的处境对你非常有利，应该把握机会，大胆向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、开拓创新"
        ),
        DivinationSign(
            number: 7,
            title: "第七签 静待花开",
            poem: "万物生长需时日，莫要心急图一时。\n静待花开结硕果，春去秋来终有期。",
            explanation: "此签提醒你当前需要耐心等待，不要过于急躁。一切都在向好的方向发展，只是需要一定的时间。就像种子发芽需要时间一样，成功也需要等待。",
            fortune: "中上",
            advice: "保持耐心、稳步前进、厚积薄发"
        ),
        DivinationSign(
            number: 8,
            title: "第八签 明月照心",
            poem: "明月清辉照心田，烦忧散尽见本然。\n内心澄明智慧现，事事顺遂在眼前。",
            explanation: "此签象征着内心的澄明和智慧。当前你需要保持内心的平静，不被外界干扰。清晰的思维和理性的判断会帮助你做出正确的选择。",
            fortune: "上",
            advice: "保持冷静、理性决策、心境平和"
        ),
        DivinationSign(
            number: 9,
            title: "第九签 逆水行舟",
            poem: "逆水行舟不进则退，奋楫前行显本色。\n莫畏险阻与艰难，终见成功在彼岸。",
            explanation: "此签暗示当前面临着一些挑战和困难，需要付出更多的努力。但只要坚持不懈，继续前进，最终一定能够克服困难，达到目标。",
            fortune: "中",
            advice: "坚持不懈、迎难而上、努力奋斗"
        ),
        DivinationSign(
            number: 10,
            title: "第十签 贵人相助",
            poem: "贵人相助喜事临，天降福缘遇知音。\n把握机遇莫迟疑，前程似锦步步新。",
            explanation: "此签预示着将会得到贵人的帮助，能遇到对自己有帮助的人。机遇就在眼前，要积极把握，不要犹豫不决。",
            fortune: "上",
            advice: "把握机会、广结善缘、积极社交"
        ),
        DivinationSign(
            number: 11,
            title: "第十一签 云开见日",
            poem: "乌云散尽见青天，困境过后喜事连。\n守得云开见月明，柳暗花明又一村。",
            explanation: "此签预示着困难即将过去，好运即将到来。就像雨过天晴一样，当前的困境很快就会结束，迎来光明。",
            fortune: "中上",
            advice: "保持希望、坚持到底、转机在即"
        ),
        DivinationSign(
            number: 12,
            title: "第十二签 稳扎稳打",
            poem: "欲速则不达，循序渐进真。\n一步一个脚印，终得登高望远。",
            explanation: "此签提醒你不要急于求成，应该脚踏实地，一步一步来。稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中",
            advice: "脚踏实地、循序渐进、稳中求进"
        ),
        DivinationSign(
            number: 13,
            title: "第十三签 转运来临",
            poem: "否极泰来春满园，时运转好福运连。\n把握机遇勇向前，成功在望志气坚。",
            explanation: "此签象征着运势的转折点已经到来，好运即将降临。当前是一个重要的转机，要积极把握机会，勇敢前进。",
            fortune: "上上",
            advice: "把握机遇、勇往直前、信心满满"
        ),
        DivinationSign(
            number: 14,
            title: "第十四签 谨慎行事",
            poem: "行事谨慎保安然，思前想后保周全。\n宁静致远志更坚，稳中求进向前行。",
            explanation: "此签提醒你当前需要特别谨慎，做事要三思而后行。不要冒进，要充分考虑各种可能性，稳妥地推进。",
            fortune: "中",
            advice: "谨慎行事、深思熟虑、稳妥推进"
        ),
        DivinationSign(
            number: 15,
            title: "第十五签 贵人扶持",
            poem: "贵人扶持好运来，天降福缘喜事开。\n把握机遇莫放过，前程似锦步步佳。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助和支持。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "寻求帮助、把握机会、积极合作"
        ),
        DivinationSign(
            number: 16,
            title: "第十六签 守正待时",
            poem: "守正待时莫妄行，静待良机显光明。\n坚持本心终有报，春暖花开在眼前。",
            explanation: "此签告诉你要坚持正道，不要走捷径。当前虽然进展缓慢，但只要坚持正确的方向，好的结果终会到来。",
            fortune: "中上",
            advice: "坚持正道、耐心等待、守正不移"
        ),
        DivinationSign(
            number: 17,
            title: "第十七签 同舟共济",
            poem: "同舟共济显真情，携手同心渡难关。\n团结一致志气高，共创佳绩在今朝。",
            explanation: "此签暗示着团队合作的重要性。当前的困难需要通过集体的力量来解决，要善于寻求他人的帮助和支持。",
            fortune: "上",
            advice: "团结协作、互帮互助、共同进步"
        ),
        DivinationSign(
            number: 18,
            title: "第十八签 明智抉择",
            poem: "路在脚下任选择，明智决断显才智。\n深思熟虑走正道，成功在望志气坚。",
            explanation: "此签提醒你现在面临重要的选择，需要深思熟虑，做出明智的决定。不要被表面现象迷惑，要看清事物的本质。",
            fortune: "中上",
            advice: "深思熟虑、明智抉择、果断行动"
        ),
        DivinationSign(
            number: 19,
            title: "第十九签 春华秋实",
            poem: "春种秋收理当然，付出终有好收获。\n耐心等待不焦躁，硕果累累在眼前。",
            explanation: "此签预示着付出必有回报，但需要耐心等待。就像农作物需要经过春种秋收，一切都要按规律发展。",
            fortune: "上",
            advice: "耐心等待、持续付出、静待收获"
        ),
        DivinationSign(
            number: 20,
            title: "第二十签 逢凶化吉",
            poem: "逢凶化吉福星照，困境之中见曙光。\n守得云开见月明，否极泰来运转强。",
            explanation: "此签表示当前的困难即将过去，坏运气将转为好运。要保持乐观的心态，相信困境过后就是转机。",
            fortune: "中上",
            advice: "保持乐观、转危为安、坚定信心"
        ),
        DivinationSign(
            number: 21,
            title: "第二十一签 顺势而为",
            poem: "顺势而为显智慧，把握时机勇向前。\n天时地利人和全，成功在望志更坚。",
            explanation: "此签提醒你要顺应形势，把握当前的有利时机。现在各方面条件都很有利，要勇敢地向前迈进。",
            fortune: "上上",
            advice: "把握时机、顺势而为、勇往直前"
        ),
        DivinationSign(
            number: 22,
            title: "第二十二签 内外兼修",
            poem: "内外兼修志气高，修身养性立根本。\n德才兼备显光明，前程似锦步步高。",
            explanation: "此签强调要内外兼修，既要提升自己的能力，也要注重品德的修养。只有德才兼备，才能获得长远的发展。",
            fortune: "上",
            advice: "修身养性、提升能力、德才兼备"
        ),
        DivinationSign(
            number: 23,
            title: "第二十三签 稳中求进",
            poem: "稳中求进显智慧，循序渐进莫急躁。\n一步一个脚印行，终见成功在眼前。",
            explanation: "此签告诉你要在稳定中寻求进步，不要急于求成。踏实稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中上",
            advice: "稳健发展、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 24,
            title: "第二十四签 贵人来助",
            poem: "贵人来助喜事临，天降福缘遇良机。\n把握机遇莫放过，前程似锦步步高。",
            explanation: "此签预示着将有贵人相助，能得到意外的帮助。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "把握机遇、广结善缘、积极合作"
        ),
        DivinationSign(
            number: 25,
            title: "第二十五签 心想事成",
            poem: "心想事成喜事临，万事如意福运来。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签是上上签，预示着心中所想都能实现，各方面都很顺利。当前的运势很好，要积极把握机会。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 26,
            title: "第二十六签 明镜高悬",
            poem: "明镜高悬照四方，智慧之光破迷茫。\n看清前路把握住，成功在望志更扬。",
            explanation: "此签象征着智慧和明辨是非的能力。当前你需要保持清醒的头脑，明辨是非，不被表象迷惑。机会就在眼前，关键是要看清方向。",
            fortune: "上",
            advice: "明辨是非、保持清醒、把握方向"
        ),
        DivinationSign(
            number: 27,
            title: "第二十七签 厚德载物",
            poem: "厚德载物显本色，宽容待人结善缘。\n春风化雨润无声，桃李满园香自来。",
            explanation: "此签强调品德修养的重要性。以德服人，以善待人，必有好报。现在是积累人脉和信任的好时机。",
            fortune: "上",
            advice: "修德养性、宽容待人、广结善缘"
        ),
        DivinationSign(
            number: 28,
            title: "第二十八签 循序渐进",
            poem: "循序渐进步步稳，欲速则不达真理。\n稳扎稳打向前行，终见成功在眼前。",
            explanation: "此签提醒你不要急于求成，要按部就班地完成目标。稳健的前进比急躁冒进更容易成功。",
            fortune: "中上",
            advice: "稳步前进、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 29,
            title: "第二十九签 福星高照",
            poem: "福星高照运气旺，时来运转好运连。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 30,
            title: "第三十签 守正不移",
            poem: "守正不移志气坚，坚持正道显光明。\n莫被利诱心不动，终见成功在眼前。",
            explanation: "此签告诉你要坚持正道，不为外物所动。当前可能会遇到诱惑，但只要坚持正确的方向，终会获得成功。",
            fortune: "上",
            advice: "坚持正道、不为所动、守正不移"
        ),
        DivinationSign(
            number: 31,
            title: "第三十一签 春风化雨",
            poem: "春风化雨润无声，润物细无声处显。\n耐心等待见彩虹，硕果累累在眼前。",
            explanation: "此签象征着潜移默化的力量。当前的努力虽然暂时看不到效果，但只要持续付出，终会开花结果。",
            fortune: "中上",
            advice: "持续努力、耐心等待、静待花开"
        ),
        DivinationSign(
            number: 32,
            title: "第三十二签 明心见性",
            poem: "明心见性悟真谛，内省修身立根本。\n心清如水智慧生，前程似锦步步高。",
            explanation: "此签提醒你要多加自省，保持内心的澄明。当前需要静下心来思考，明确方向和目标。",
            fortune: "上",
            advice: "自省修身、明确方向、保持清醒"
        ),
        DivinationSign(
            number: 33,
            title: "第三十三签 贵人相助",
            poem: "贵人相助喜事临，天降福缘遇良机。\n把握机遇莫放过，成功在望志更坚。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "把握机遇、寻求合作、广结善缘"
        ),
        DivinationSign(
            number: 34,
            title: "第三十四签 稳中求进",
            poem: "稳中求进显智慧，循序渐进莫急躁。\n一步一个脚印行，终见成功在眼前。",
            explanation: "此签告诉你要在稳定中寻求进步，不要急于求成。踏实稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中上",
            advice: "稳健发展、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 35,
            title: "第三十五签 转运来临",
            poem: "转运来临喜事至，时来运转福运连。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着运势正在好转，困难即将过去。当前是一个重要的转折点，要积极把握机会，勇敢前进。",
            fortune: "上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 36,
            title: "第三十六签 心想事成",
            poem: "心想事成喜事临，万事如意福运来。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签是上上签，预示着心中所想都能实现，各方面都很顺利。当前的运势很好，要积极把握机会。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 37,
            title: "第三十七签 逢凶化吉",
            poem: "逢凶化吉福星照，困境之中见曙光。\n守得云开见月明，否极泰来运转强。",
            explanation: "此签表示当前的困难即将过去，坏运气将转为好运。要保持乐观的心态，相信困境过后就是转机。",
            fortune: "中上",
            advice: "保持乐观、转危为安、坚定信心"
        ),
        DivinationSign(
            number: 38,
            title: "第三十八签 明智抉择",
            poem: "明智抉择显才智，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你现在面临重要的选择，需要深思熟虑，做出明智的决定。不要被表面现象迷惑，要看清事物的本质。",
            fortune: "中上",
            advice: "深思熟虑、明智抉择、谨慎行事"
        ),
        DivinationSign(
            number: 39,
            title: "第三十九签 贵人扶持",
            poem: "贵人扶持好运来，天降福缘喜事开。\n把握机遇莫放过，前程似锦步步佳。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助和支持。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "寻求帮助、把握机会、积极合作"
        ),
        DivinationSign(
            number: 40,
            title: "第四十签 守正待时",
            poem: "守正待时莫妄行，静待良机显光明。\n坚持本心终有报，春暖花开在眼前。",
            explanation: "此签告诉你要坚持正道，不要走捷径。当前虽然进展缓慢，但只要坚持正确的方向，好的结果终会到来。",
            fortune: "中上",
            advice: "坚持正道、耐心等待、守正不移"
        ),
        DivinationSign(
            number: 41,
            title: "第四十一签 同舟共济",
            poem: "同舟共济显真情，携手同心渡难关。\n团结一致志气高，共创佳绩在今朝。",
            explanation: "此签暗示着团队合作的重要性。当前的困难需要通过集体的力量来解决，要善于寻求他人的帮助和支持。",
            fortune: "上",
            advice: "团结协作、互帮互助、共同进步"
        ),
        DivinationSign(
            number: 42,
            title: "第四十二签 春华秋实",
            poem: "春种秋收理当然，付出终有好收获。\n耐心等待不焦躁，硕果累累在眼前。",
            explanation: "此签预示着付出必有回报，但需要耐心等待。就像农作物需要经过春种秋收，一切都要按规律发展。",
            fortune: "上",
            advice: "耐心等待、持续付出、静待收获"
        ),
        DivinationSign(
            number: 43,
            title: "第四十三签 智慧明断",
            poem: "智慧明断显才能，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你要运用智慧，明智决断。当前的情况需要你冷静思考，做出正确的判断。",
            fortune: "上",
            advice: "明智决断、冷静思考、谨慎行事"
        ),
        DivinationSign(
            number: 44,
            title: "第四十四签 福运亨通",
            poem: "福运亨通喜事来，时来运转好运开。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 45,
            title: "第四十五签 厚德载物",
            poem: "厚德载物显本色，宽容待人结善缘。\n春风化雨润无声，桃李满园香自来。",
            explanation: "此签强调品德修养的重要性。以德服人，以善待人，必有好报。现在是积累人脉和信任的好时机。",
            fortune: "上",
            advice: "修德养性、宽容待人、广结善缘"
        ),
        DivinationSign(
            number: 46,
            title: "第四十六签 明镜高悬",
            poem: "明镜高悬照四方，智慧之光破迷茫。\n看清前路把握住，成功在望志更扬。",
            explanation: "此签象征着智慧和明辨是非的能力。当前你需要保持清醒的头脑，明辨是非，不被表象迷惑。机会就在眼前，关键是要看清方向。",
            fortune: "上",
            advice: "明辨是非、保持清醒、把握方向"
        ),
        DivinationSign(
            number: 47,
            title: "第四十七签 循序渐进",
            poem: "循序渐进步步稳，欲速则不达真理。\n稳扎稳打向前行，终见成功在眼前。",
            explanation: "此签提醒你不要急于求成，要按部就班地完成目标。稳健的前进比急躁冒进更容易成功。",
            fortune: "中上",
            advice: "稳步前进、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 48,
            title: "第四十八签 福星高照",
            poem: "福星高照运气旺，时来运转好运连。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 49,
            title: "第四十九签 守正不移",
            poem: "守正不移志气坚，坚持正道显光明。\n莫被利诱心不动，终见成功在眼前。",
            explanation: "此签告诉你要坚持正道，不为外物所动。当前可能会遇到诱惑，但只要坚持正确的方向，终会获得成功。",
            fortune: "上",
            advice: "坚持正道、不为所动、守正不移"
        ),
        DivinationSign(
            number: 50,
            title: "第五十签 春风化雨",
            poem: "春风化雨润无声，润物细无声处显。\n耐心等待见彩虹，硕果累累在眼前。",
            explanation: "此签象征着潜移默化的力量。当前的努力虽然暂时看不到效果，但只要持续付出，终会开花结果。",
            fortune: "中上",
            advice: "持续努力、耐心等待、静待花开"
        ),
        DivinationSign(
            number: 51,
            title: "第五十一签 明心见性",
            poem: "明心见性悟真谛，内省修身立根本。\n心清如水智慧生，前程似锦步步高。",
            explanation: "此签提醒你要多加自省，保持内心的澄明。当前需要静下心来思考，明确方向和目标。",
            fortune: "上",
            advice: "自省修身、明确方向、保持清醒"
        ),
        DivinationSign(
            number: 52,
            title: "第五十二签 贵人相助",
            poem: "贵人相助喜事临，天降福缘遇良机。\n把握机遇莫放过，成功在望志更坚。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "把握机遇、寻求合作、广结善缘"
        ),
        DivinationSign(
            number: 53,
            title: "第五十三签 稳中求胜",
            poem: "稳中求胜显智慧，循序渐进莫急躁。\n一步一个脚印行，终见成功在眼前。",
            explanation: "此签告诉你要在稳定中寻求进步，不要急于求成。踏实稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中上",
            advice: "稳健发展、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 54,
            title: "第五十四签 转运来临",
            poem: "转运来临喜事至，时来运转福运连。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着运势正在好转，困难即将过去。当前是一个重要的转折点，要积极把握机会，勇敢前进。",
            fortune: "上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 55,
            title: "第五十五签 心想事成",
            poem: "心想事成喜事临，万事如意福运来。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签是上上签，预示着心中所想都能实现，各方面都很顺利。当前的运势很好，要积极把握机会。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 56,
            title: "第五十六签 逢凶化吉",
            poem: "逢凶化吉福星照，困境之中见曙光。\n守得云开见月明，否极泰来运转强。",
            explanation: "此签表示当前的困难即将过去，坏运气将转为好运。要保持乐观的心态，相信困境过后就是转机。",
            fortune: "中上",
            advice: "保持乐观、转危为安、坚定信心"
        ),
        DivinationSign(
            number: 57,
            title: "第五十七签 明智抉择",
            poem: "明智抉择显才智，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你现在面临重要的选择，需要深思熟虑，做出明智的决定。不要被表面现象迷惑，要看清事物的本质。",
            fortune: "中上",
            advice: "深思熟虑、明智抉择、谨慎行事"
        ),
        DivinationSign(
            number: 58,
            title: "第五十八签 贵人扶持",
            poem: "贵人扶持好运来，天降福缘喜事开。\n把握机遇莫放过，前程似锦步步佳。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助和支持。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "寻求帮助、把握机会、积极合作"
        ),
        DivinationSign(
            number: 59,
            title: "第五十九签 守正待时",
            poem: "守正待时莫妄行，静待良机显光明。\n坚持本心终有报，春暖花开在眼前。",
            explanation: "此签告诉你要坚持正道，不要走捷径。当前虽然进展缓慢，但只要坚持正确的方向，好的结果终会到来。",
            fortune: "中上",
            advice: "坚持正道、耐心等待、守正不移"
        ),
        DivinationSign(
            number: 60,
            title: "第六十签 同舟共济",
            poem: "同舟共济显真情，携手同心渡难关。\n团结一致志气高，共创佳绩在今朝。",
            explanation: "此签暗示着团队合作的重要性。当前的困难需要通过集体的力量来解决，要善于寻求他人的帮助和支持。",
            fortune: "上",
            advice: "团结协作、互帮互助、共同进步"
        ),
        DivinationSign(
            number: 61,
            title: "第六十一签 春华秋实",
            poem: "春种秋收理当然，付出终有好收获。\n耐心等待不焦躁，硕果累累在眼前。",
            explanation: "此签预示着付出必有回报，但需要耐心等待。就像农作物需要经过春种秋收，一切都要按规律发展。",
            fortune: "上",
            advice: "耐心等待、持续付出、静待收获"
        ),
        DivinationSign(
            number: 62,
            title: "第六十二签 智慧明断",
            poem: "智慧明断显才能，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你要运用智慧，明智决断。当前的情况需要你冷静思考，做出正确的判断。",
            fortune: "上",
            advice: "明智决断、冷静思考、谨慎行事"
        ),
        DivinationSign(
            number: 63,
            title: "第六十三签 福运亨通",
            poem: "福运亨通喜事来，时来运转好运开。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 64,
            title: "第六十四签 厚德载物",
            poem: "厚德载物显本色，宽容待人结善缘。\n春风化雨润无声，桃李满园香自来。",
            explanation: "此签强调品德修养的重要性。以德服人，以善待人，必有好报。现在是积累人脉和信任的好时机。",
            fortune: "上",
            advice: "修德养性、宽容待人、广结善缘"
        ),
        DivinationSign(
            number: 65,
            title: "第六十五签 明镜高悬",
            poem: "明镜高悬照四方，智慧之光破迷茫。\n看清前路把握住，成功在望志更扬。",
            explanation: "此签象征着智慧和明辨是非的能力。当前你需要保持清醒的头脑，明辨是非，不被表象迷惑。机会就在眼前，关键是要看清方向。",
            fortune: "上",
            advice: "明辨是非、保持清醒、把握方向"
        ),
        DivinationSign(
            number: 66,
            title: "第六十六签 循序渐进",
            poem: "循序渐进步步稳，欲速则不达真理。\n稳扎稳打向前行，终见成功在眼前。",
            explanation: "此签提醒你不要急于求成，要按部就班地完成目标。稳健的前进比急躁冒进更容易成功。",
            fortune: "中上",
            advice: "稳步前进、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 67,
            title: "第六十七签 福星高照",
            poem: "福星高照运气旺，时来运转好运连。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 68,
            title: "第六十八签 守正不移",
            poem: "守正不移志气坚，坚持正道显光明。\n莫被利诱心不动，终见成功在眼前。",
            explanation: "此签告诉你要坚持正道，不为外物所动。当前可能会遇到诱惑，但只要坚持正确的方向，终会获得成功。",
            fortune: "上",
            advice: "坚持正道、不为所动、守正不移"
        ),
        DivinationSign(
            number: 69,
            title: "第六十九签 春风化雨",
            poem: "春风化雨润无声，润物细无声处显。\n耐心等待见彩虹，硕果累累在眼前。",
            explanation: "此签象征着潜移默化的力量。当前的努力虽然暂时看不到效果，但只要持续付出，终会开花结果。",
            fortune: "中上",
            advice: "持续努力、耐心等待、静待花开"
        ),
        DivinationSign(
            number: 70,
            title: "第七十签 明心见性",
            poem: "明心见性悟真谛，内省修身立根本。\n心清如水智慧生，前程似锦步步高。",
            explanation: "此签提醒你要多加自省，保持内心的澄明。当前需要静下心来思考，明确方向和目标。",
            fortune: "上",
            advice: "自省修身、明确方向、保持清醒"
        ),
        DivinationSign(
            number: 71,
            title: "第七十一签 贵人相助",
            poem: "贵人相助喜事临，天降福缘遇良机。\n把握机遇莫放过，成功在望志更坚。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "把握机遇、寻求合作、广结善缘"
        ),
        DivinationSign(
            number: 72,
            title: "第七十二签 稳中求胜",
            poem: "稳中求胜显智慧，循序渐进莫急躁。\n一步一个脚印行，终见成功在眼前。",
            explanation: "此签告诉你要在稳定中寻求进步，不要急于求成。踏实稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中上",
            advice: "稳健发展、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 73,
            title: "第七十三签 转运来临",
            poem: "转运来临喜事至，时来运转福运连。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着运势正在好转，困难即将过去。当前是一个重要的转折点，要积极把握机会，勇敢前进。",
            fortune: "上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 74,
            title: "第七十四签 心想事成",
            poem: "心想事成喜事临，万事如意福运来。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签是上上签，预示着心中所想都能实现，各方面都很顺利。当前的运势很好，要积极把握机会。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 75,
            title: "第七十五签 逢凶化吉",
            poem: "逢凶化吉福星照，困境之中见曙光。\n守得云开见月明，否极泰来运转强。",
            explanation: "此签表示当前的困难即将过去，坏运气将转为好运。要保持乐观的心态，相信困境过后就是转机。",
            fortune: "中上",
            advice: "保持乐观、转危为安、坚定信心"
        ),
        DivinationSign(
            number: 76,
            title: "第七十六签 智慧圆满",
            poem: "智慧圆满显光明，明察秋毫见真章。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签象征着智慧和洞察力。当前你的判断力很准确，要相信自己的直觉，把握机会向前发展。",
            fortune: "上",
            advice: "相信直觉、把握机会、勇往直前"
        ),
        DivinationSign(
            number: 77,
            title: "第七十七签 厚德载福",
            poem: "厚德载福显本色，善待他人结善缘。\n春风化雨润无声，桃李满园香自来。",
            explanation: "此签强调品德修养的重要性。以德服人，以善待人，必有好报。现在是积累人脉和信任的好时机。",
            fortune: "上",
            advice: "修德养性、善待他人、广结善缘"
        ),
        DivinationSign(
            number: 78,
            title: "第七十八签 明镜在心",
            poem: "明镜在心照四方，智慧之光破迷茫。\n看清前路把握住，成功在望志更扬。",
            explanation: "此签提醒你要保持内心清明，不被外界干扰。当前需要保持清醒的头脑，明辨是非，把握方向。",
            fortune: "上",
            advice: "保持清醒、明辨是非、把握方向"
        ),
        DivinationSign(
            number: 79,
            title: "第七十九签 春暖花开",
            poem: "春暖花开好时节，万物复苏展新颜。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着新的机遇即将到来，各方面都充满希望。当前是一个充满生机的时期，要积极把握机会。",
            fortune: "上",
            advice: "把握机遇、积极进取、开拓创新"
        ),
        DivinationSign(
            number: 80,
            title: "第八十签 福运亨通",
            poem: "福运亨通喜事来，时来运转好运开。\n把握机遇莫放过，前程似锦步步佳。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 81,
            title: "第八十一签 守正待时",
            poem: "守正待时莫妄行，静待良机显光明。\n坚持本心终有报，春暖花开在眼前。",
            explanation: "此签告诉你要坚持正道，不要走捷径。当前虽然进展缓慢，但只要坚持正确的方向，好的结果终会到来。",
            fortune: "中上",
            advice: "坚持正道、耐心等待、守正不移"
        ),
        DivinationSign(
            number: 82,
            title: "第八十二签 同心协力",
            poem: "同心协力显真情，携手同心渡难关。\n团结一致志气高，共创佳绩在今朝。",
            explanation: "此签暗示着团队合作的重要性。当前的困难需要通过集体的力量来解决，要善于寻求他人的帮助和支持。",
            fortune: "上",
            advice: "团结协作、互帮互助、共同进步"
        ),
        DivinationSign(
            number: 83,
            title: "第八十三签 春华秋实",
            poem: "春种秋收理当然，付出终有好收获。\n耐心等待不焦躁，硕果累累在眼前。",
            explanation: "此签预示着付出必有回报，但需要耐心等待。就像农作物需要经过春种秋收，一切都要按规律发展。",
            fortune: "上",
            advice: "耐心等待、持续付出、静待收获"
        ),
        DivinationSign(
            number: 84,
            title: "第八十四签 智慧明断",
            poem: "智慧明断显才能，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你要运用智慧，明智决断。当前的情况需要你冷静思考，做出正确的判断。",
            fortune: "上",
            advice: "明智决断、冷静思考、谨慎行事"
        ),
        DivinationSign(
            number: 85,
            title: "第八十五签 福运连连",
            poem: "福运连连喜事来，时来运转好运开。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着好运连连，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 86,
            title: "第八十六签 明德惟馨",
            poem: "明德惟馨显本色，善待他人结善缘。\n春风化雨润无声，桃李满园香自来。",
            explanation: "此签强调品德修养的重要性。以德服人，以善待人，必有好报。现在是积累人脉和信任的好时机。",
            fortune: "上",
            advice: "修德养性、善待他人、广结善缘"
        ),
        DivinationSign(
            number: 87,
            title: "第八十七签 智慧圆通",
            poem: "智慧圆通显光明，明察秋毫见真章。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签象征着智慧和洞察力。当前你的判断力很准确，要相信自己的直觉，把握机会向前发展。",
            fortune: "上",
            advice: "相信直觉、把握机会、勇往直前"
        ),
        DivinationSign(
            number: 88,
            title: "第八十八签 春暖花开",
            poem: "春暖花开好时节，万物复苏展新颜。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着新的机遇即将到来，各方面都充满希望。当前是一个充满生机的时期，要积极把握机会。",
            fortune: "上",
            advice: "把握机遇、积极进取、开拓创新"
        ),
        DivinationSign(
            number: 89,
            title: "第八十九签 守正待时",
            poem: "守正待时莫妄行，静待良机显光明。\n坚持本心终有报，春暖花开在眼前。",
            explanation: "此签告诉你要坚持正道，不要走捷径。当前虽然进展缓慢，但只要坚持正确的方向，好的结果终会到来。",
            fortune: "中上",
            advice: "坚持正道、耐心等待、守正不移"
        ),
        DivinationSign(
            number: 90,
            title: "第九十签 同心同德",
            poem: "同心同德显真情，携手同心渡难关。\n团结一致志气高，共创佳绩在今朝。",
            explanation: "此签暗示着团队合作的重要性。当前的困难需要通过集体的力量来解决，要善于寻求他人的帮助和支持。",
            fortune: "上",
            advice: "团结协作、互帮互助、共同进步"
        ),
        DivinationSign(
            number: 91,
            title: "第九十一签 春华秋实",
            poem: "春种秋收理当然，付出终有好收获。\n耐心等待不焦躁，硕果累累在眼前。",
            explanation: "此签预示着付出必有回报，但需要耐心等待。就像农作物需要经过春种秋收，一切都要按规律发展。",
            fortune: "上",
            advice: "耐心等待、持续付出、静待收获"
        ),
        DivinationSign(
            number: 92,
            title: "第九十二签 智慧明断",
            poem: "智慧明断显才能，深思熟虑保安然。\n谨慎行事志更坚，成功在望步步高。",
            explanation: "此签提醒你要运用智慧，明智决断。当前的情况需要你冷静思考，做出正确的判断。",
            fortune: "上",
            advice: "明智决断、冷静思考、谨慎行事"
        ),
        DivinationSign(
            number: 93,
            title: "第九十三签 福运亨通",
            poem: "福运亨通喜事来，时来运转好运开。\n把握机遇莫放过，前程似锦步步佳。",
            explanation: "此签预示着好运即将来临，各方面都很顺利。当前是一个难得的机遇期，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 94,
            title: "第九十四签 明心见性",
            poem: "明心见性悟真谛，内省修身立根本。\n心清如水智慧生，前程似锦步步高。",
            explanation: "此签提醒你要多加自省，保持内心的澄明。当前需要静下心来思考，明确方向和目标。",
            fortune: "上",
            advice: "自省修身、明确方向、保持清醒"
        ),
        DivinationSign(
            number: 95,
            title: "第九十五签 贵人相助",
            poem: "贵人相助喜事临，天降福缘遇良机。\n把握机遇莫放过，成功在望志更坚。",
            explanation: "此签预示着将有贵人相助，能得到他人的帮助。要善于把握机会，主动寻求合作，事业会更上一层楼。",
            fortune: "上",
            advice: "把握机遇、寻求合作、广结善缘"
        ),
        DivinationSign(
            number: 96,
            title: "第九十六签 稳中求胜",
            poem: "稳中求胜显智慧，循序渐进莫急躁。\n一步一个脚印行，终见成功在眼前。",
            explanation: "此签告诉你要在稳定中寻求进步，不要急于求成。踏实稳健的前进比急躁冒进更容易达到目标。",
            fortune: "中上",
            advice: "稳健发展、循序渐进、脚踏实地"
        ),
        DivinationSign(
            number: 97,
            title: "第九十七签 转运来临",
            poem: "转运来临喜事至，时来运转福运连。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签预示着运势正在好转，困难即将过去。当前是一个重要的转折点，要积极把握机会，勇敢前进。",
            fortune: "上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 98,
            title: "第九十八签 心想事成",
            poem: "心想事成喜事临，万事如意福运来。\n把握机遇莫迟疑，前程似锦步步高。",
            explanation: "此签是上上签，预示着心中所想都能实现，各方面都很顺利。当前的运势很好，要积极把握机会。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        ),
        DivinationSign(
            number: 99,
            title: "第九十九签 逢凶化吉",
            poem: "逢凶化吉福星照，困境之中见曙光。\n守得云开见月明，否极泰来运转强。",
            explanation: "此签表示当前的困难即将过去，坏运气将转为好运。要保持乐观的心态，相信困境过后就是转机。",
            fortune: "中上",
            advice: "保持乐观、转危为安、坚定信心"
        ),
        DivinationSign(
            number: 100,
            title: "第一百签 圆满吉祥",
            poem: "圆满吉祥福运来，万事如意心想成。\n把握机遇向前行，前程似锦步步高。",
            explanation: "此签是上上签，预示着圆满吉祥，万事如意。当前的运势非常好，要积极把握机会，勇敢向前。",
            fortune: "上上",
            advice: "把握机遇、积极进取、勇往直前"
        )
    ]
    
    static func getSign(number: Int) -> DivinationSign? {
        return signs.first { $0.number == number }
    }
    
    static func getRandomSigns(count: Int) -> [DivinationSign] {
        var selectedNumbers = Set<Int>()
        var result: [DivinationSign] = []
        
        while result.count < count {
            let randomNumber = Int.random(in: 1...108)
            if !selectedNumbers.contains(randomNumber),
               let sign = signs.first(where: { $0.number == randomNumber }) {
                selectedNumbers.insert(randomNumber)
                result.append(sign)
            }
        }
        
        return result
    }
    
    static func getRandomSign() -> DivinationSign {
        // 过滤出有内容的签
        let validSigns = signs.filter { !$0.poem.isEmpty && !$0.explanation.isEmpty }
        
        // 从有内容的签中随机选择一个
        let randomIndex = Int.random(in: 0..<validSigns.count)
        return validSigns[randomIndex]
    }
    
    static func interpretSigns(_ signs: [DivinationSign]) -> (String, String, String, String) {
        // 计算综合运势
        let fortuneValues = signs.map { sign -> Int in
            switch sign.fortune {
            case "上上": return 6
            case "上": return 5
            case "中上": return 4
            case "中": return 3
            case "中下": return 2
            case "下": return 1
            default: return 0
            }
        }
        
        let averageValue = Double(fortuneValues.reduce(0, +)) / Double(signs.count)
        
        // 生成结果
        let signNumbers = signs.map { String($0.number) }.joined(separator: "、")
        let mainText = "您抽到了第\(signNumbers)签"
        
        let poems = signs.map { "第\($0.number)签《\($0.title)》：\n\($0.poem)" }.joined(separator: "\n\n")
        let interpretation = poems + "\n\n" + signs.map { $0.explanation }.joined(separator: "\n")
        
        // 根据平均值判断综合运势和建议
        let (goodActivities, badActivities) = getAdvice(averageValue, signs: signs)
        
        return (mainText, interpretation, goodActivities, badActivities)
    }
    
    private static func getAdvice(_ average: Double, signs: [DivinationSign]) -> (String, String) {
        let goodAdvices = signs.flatMap { $0.advice.components(separatedBy: "、") }
        let uniqueGoodAdvices = Array(Set(goodAdvices)).joined(separator: "、")
        
        var badActivities = ""
        if average < 3 {
            badActivities = "大事决策、投资冒险、婚姻嫁娶"
        } else if average < 4 {
            badActivities = "大额支出、远行经商"
        } else if average < 5 {
            badActivities = "冒险投机"
        } else {
            badActivities = "无"
        }
        
        return (uniqueGoodAdvices, badActivities)
    }
}
