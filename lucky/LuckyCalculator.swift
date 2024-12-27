import Foundation

class LuckyCalculator {
    // 天干
    static let heavenlyStems = ["甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"]
    // 地支
    static let earthlyBranches = ["子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"]
    // 五行
    static let fiveElements = ["金", "木", "水", "火", "土"]
    
    // 计算天干地支
    static func calculateStemsBranches(date: Date) -> (stem: String, branch: String) {
        let calendar = Calendar(identifier: .chinese)
        let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
        
        // 简化计算，使用时间各个部分的和来确定天干地支
        let total = (components.year ?? 0) + (components.month ?? 0) + 
                   (components.day ?? 0) + (components.hour ?? 0)
        
        let stemIndex = total % 10
        let branchIndex = total % 12
        
        return (heavenlyStems[stemIndex], earthlyBranches[branchIndex])
    }
    
    // 计算五行属性
    static func calculateElement(stem: String, branch: String) -> String {
        let combined = stem + branch
        let hash = combined.hash
        return fiveElements[abs(hash) % 5]
    }
    
    // 根据日期计算卦象
    static func calculateDailyHexagram(date: Date) -> Hexagram {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
        
        // 获取天干地支
        let (stem, branch) = calculateStemsBranches(date: date)
        // 获取五行
        let element = calculateElement(stem: stem, branch: branch)
        
        // 使用更复杂的算法计算卦象
        let yearValue = (components.year ?? 0) % 8 + 1  // 1-8
        let monthValue = (components.month ?? 0) % 6 + 1 // 1-6
        let dayValue = (components.day ?? 0) % 9 + 1   // 1-9
        let hourValue = (components.hour ?? 0) % 12 + 1 // 1-12
        
        // 根据五行相生相克原理调整数值
        let elementAdjustment: Int
        switch element {
        case "金": elementAdjustment = 4
        case "木": elementAdjustment = 3
        case "水": elementAdjustment = 1
        case "火": elementAdjustment = 2
        case "土": elementAdjustment = 5
        default: elementAdjustment = 0
        }
        
        // 最终卦象计算
        let hexagramNumber = ((yearValue * monthValue + dayValue * hourValue) * 
                            elementAdjustment) % 64 + 1
        
        // 返回对应的卦象
        return hexagramNumber <= 2 ? Hexagram.allHexagrams[hexagramNumber - 1] : 
                                  Hexagram.allHexagrams[0]
    }
    
    // 获取当日运势报告
    static func getDailyFortune(date: Date) -> (String, String, String, String) {
        let hexagram = calculateDailyHexagram(date: date)
        let (stem, branch) = calculateStemsBranches(date: date)
        let element = calculateElement(stem: stem, branch: branch)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        
        let mainText = """
        \(dateFormatter.string(from: date))运势解析
        ----------------------------------------
        今日卦象：\(hexagram.name)（\(hexagram.description)）
        五行属性：\(element)
        天干地支：\(stem)\(branch)
        """
        
        let interpretation = """
        运势解读：\(hexagram.meaning)
        五行影响：\(interpretElement(element))
        """
        
        let goodActivities = hexagram.goodFor.map { "• \($0)" }.joined(separator: "\n")
        let badActivities = hexagram.badFor.map { "• \($0)" }.joined(separator: "\n")
        
        return (mainText, interpretation, goodActivities, badActivities)
    }
    
    private static func interpretElement(_ element: String) -> String {
        switch element {
        case "金": return "今日宜果断决策，适合完成任务"
        case "木": return "今日宜开创新事，适合成长发展"
        case "水": return "今日宜智慧取胜，适合学习思考"
        case "火": return "今日宜积极进取，适合展示才能"
        case "土": return "今日宜稳健踏实，适合打基础"
        default: return ""
        }
    }
}
