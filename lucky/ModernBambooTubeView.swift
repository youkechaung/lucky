import SwiftUI

struct ModernBambooTubeView: View {
    @Binding var isShaking: Bool
    @State private var glowIntensity: Double = 0.5
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        ZStack {
            // 外部光环
            Circle()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.yellow.opacity(0.3 * glowIntensity),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 150
                    )
                )
                .frame(width: 300, height: 300)
                .blur(radius: 30)
            
            // 竹筒主体
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.4, green: 0.3, blue: 0.2),
                            Color(red: 0.3, green: 0.2, blue: 0.1)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 160, height: 300)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    .white.opacity(0.4),
                                    .white.opacity(0.1)
                                ]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 2
                        )
                )
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            // 竹节纹理
            VStack(spacing: 50) {
                ForEach(0..<4) { _ in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    Color.black.opacity(0.4),
                                    Color.black.opacity(0.2)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: 160, height: 2)
                }
            }
            
            // 竹签
            ForEach(0..<15) { index in
                RoundedRectangle(cornerRadius: 2)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(red: 0.95, green: 0.9, blue: 0.85),
                                Color(red: 0.9, green: 0.85, blue: 0.8)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 6, height: 200)
                    .offset(x: CGFloat(index * 6 - 42))
                    .rotationEffect(.degrees(isShaking ? Double.random(in: -8...8) : 0))
                    .animation(
                        .spring(
                            response: 0.3,
                            dampingFraction: 0.6,
                            blendDuration: 0.1
                        ),
                        value: isShaking
                    )
            }
        }
        .rotationEffect(.degrees(rotationAngle))
        .onAppear {
            withAnimation(
                .easeInOut(duration: 3)
                .repeatForever(autoreverses: true)
            ) {
                glowIntensity = 1.0
            }
            
            withAnimation(
                .easeInOut(duration: 8)
                .repeatForever(autoreverses: true)
            ) {
                rotationAngle = 3
            }
        }
    }
}
