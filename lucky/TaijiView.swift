import SwiftUI

struct TaijiView: View {
    @State private var rotation: Double = 0
    let timer = Timer.publish(every: 0.03, on: .main, in: .common).autoconnect()
    
    private let trigramNames = [
        "乾卦 ☰\n天", "坤卦 ☷\n地",
        "坎卦 ☵\n水", "离卦 ☲\n火",
        "震卦 ☳\n雷", "巽卦 ☴\n风",
        "艮卦 ☶\n山", "兑卦 ☱\n泽"
    ]
    
    private let trigramAttributes = [
        "创造 刚健", "包容 顺从",
        "险难 智慧", "光明 文明",
        "动力 新生", "顺从 谦逊",
        "稳重 止止", "喜悦 和悦"
    ]
    
    var body: some View {
        ZStack {
            // 发光效果
            ForEach(0..<8) { index in
                Circle()
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.purple.opacity(0.2),
                                Color.blue.opacity(0.1)
                            ]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 1
                    )
                    .frame(width: 320 + CGFloat(index * 10),
                           height: 320 + CGFloat(index * 10))
                    .rotationEffect(.degrees(rotation * Double(index + 1) * 0.1))
            }
            
            // 八卦背景圆环
            Circle()
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.white.opacity(0.3),
                            Color.white.opacity(0.1)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 2
                )
                .frame(width: 300, height: 300)
                .shadow(color: Color.white.opacity(0.1), radius: 10, x: 0, y: 0)
            
            // 八卦符号和文字
            ForEach(0..<8) { index in
                VStack(spacing: 2) {
                    TrigramSymbol(index: index)
                    
                    // 卦名和属性
                    VStack(spacing: 4) {
                        Text(trigramNames[index])
                            .font(.system(size: 12, weight: .bold))
                            .multilineTextAlignment(.center)
                        
                        Text(trigramAttributes[index])
                            .font(.system(size: 10))
                            .foregroundColor(.white.opacity(0.7))
                            .multilineTextAlignment(.center)
                    }
                    .padding(.horizontal, 6)
                    .padding(.vertical, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color.black.opacity(0.3))
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.white.opacity(0.1), lineWidth: 0.5)
                            )
                    )
                }
                .rotationEffect(.degrees(Double(index) * 45))
                .offset(x: 150)
                .rotationEffect(.degrees(-Double(index) * 45))
            }
            
            // 太极图
            Circle()
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [
                            .white,
                            Color(white: 0.9),
                            .black,
                            Color(white: 0.1)
                        ]),
                        center: .center,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360)
                    )
                )
                .frame(width: 200, height: 200)
                .overlay(
                    ZStack {
                        // 阴阳鱼
                        Circle()
                            .fill(.white)
                            .frame(width: 100, height: 100)
                            .offset(y: -50)
                            .overlay(
                                Circle()
                                    .fill(.black)
                                    .frame(width: 20, height: 20)
                                    .offset(y: 25)
                            )
                        
                        Circle()
                            .fill(.black)
                            .frame(width: 100, height: 100)
                            .offset(y: 50)
                            .overlay(
                                Circle()
                                    .fill(.white)
                                    .frame(width: 20, height: 20)
                                    .offset(y: -25)
                            )
                        
                        // 中心文字
                        Text("阴阳")
                            .font(.system(size: 24, weight: .bold, design: .serif))
                            .foregroundColor(.white.opacity(0.8))
                            .shadow(color: .black, radius: 2, x: 0, y: 0)
                    }
                )
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    Color.white.opacity(0.5),
                                    Color.white.opacity(0.2)
                                ]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 1
                        )
                )
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                .rotationEffect(.degrees(rotation))
                .onReceive(timer) { _ in
                    withAnimation(.linear(duration: 0)) {
                        rotation += 1
                    }
                }
        }
        .foregroundColor(.white)
    }
}

struct TrigramSymbol: View {
    let index: Int
    
    private let trigrams: [[Bool]] = [
        [true, true, true],     // 乾 ☰
        [false, false, false],  // 坤 ☷
        [false, true, false],   // 坎 ☵
        [true, false, true],    // 离 ☲
        [true, false, false],   // 震 ☳
        [false, false, true],   // 巽 ☴
        [true, true, false],    // 艮 ☶
        [false, true, true]     // 兑 ☱
    ]
    
    var body: some View {
        VStack(spacing: 4) {
            ForEach(0..<3) { line in
                RoundedRectangle(cornerRadius: 1)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.white,
                                Color.white.opacity(0.8)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: trigrams[index][line] ? 20 : 10, height: 2)
                    .shadow(color: Color.white.opacity(0.3), radius: 2, x: 0, y: 0)
            }
        }
    }
}

struct TaijiView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            TaijiView()
                .frame(width: 400, height: 400)
        }
    }
}
