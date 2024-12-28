import SwiftUI

struct TempleBackgroundView: View {
    @State private var glowOpacity: Double = 0.5
    @State private var smokeOffset1: CGFloat = 0
    @State private var smokeOffset2: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 深色渐变背景
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.05, green: 0.05, blue: 0.15),
                        Color(red: 0.1, green: 0.05, blue: 0.2)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                // 神秘光芒效果
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color.purple.opacity(0.3),
                        Color.clear
                    ]),
                    center: .top,
                    startRadius: 100,
                    endRadius: 400
                )
                .opacity(glowOpacity)
                
                // 飘动的云雾效果1
                ForEach(0..<3) { i in
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [
                                    Color.white.opacity(0.1),
                                    Color.clear
                                ]),
                                center: .center,
                                startRadius: 50,
                                endRadius: 150
                            )
                        )
                        .frame(width: 300, height: 300)
                        .offset(x: smokeOffset1 + CGFloat(i * 100), y: CGFloat(i * 50))
                        .blur(radius: 30)
                }
                
                // 飘动的云雾效果2
                ForEach(0..<3) { i in
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [
                                    Color.purple.opacity(0.1),
                                    Color.clear
                                ]),
                                center: .center,
                                startRadius: 50,
                                endRadius: 150
                            )
                        )
                        .frame(width: 300, height: 300)
                        .offset(x: smokeOffset2 - CGFloat(i * 100), y: CGFloat(i * 100))
                        .blur(radius: 30)
                }
                
                // 闪烁的星星
                ForEach(0..<20) { _ in
                    Circle()
                        .fill(Color.white)
                        .frame(width: 2, height: 2)
                        .position(
                            x: CGFloat.random(in: 0...geometry.size.width),
                            y: CGFloat.random(in: 0...geometry.size.height)
                        )
                        .opacity(Double.random(in: 0.3...0.7))
                }
            }
            .onAppear {
                withAnimation(
                    .easeInOut(duration: 3)
                    .repeatForever(autoreverses: true)
                ) {
                    glowOpacity = 0.8
                }
                
                withAnimation(
                    .easeInOut(duration: 8)
                    .repeatForever(autoreverses: true)
                ) {
                    smokeOffset1 = 100
                }
                
                withAnimation(
                    .easeInOut(duration: 10)
                    .repeatForever(autoreverses: true)
                ) {
                    smokeOffset2 = -100
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
