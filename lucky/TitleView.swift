import SwiftUI

struct TitleView: View {
    @State private var glowIntensity: CGFloat = 0.5
    
    var body: some View {
        VStack(spacing: 15) {
            // 主标题
            Text("观音灵签")
                .font(.system(size: 52, weight: .medium, design: .serif))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .white,
                            Color(red: 1.0, green: 0.9, blue: 0.5)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .shadow(color: .yellow.opacity(glowIntensity), radius: 20, x: 0, y: 0)
                .shadow(color: .orange.opacity(glowIntensity * 0.5), radius: 10, x: 0, y: 0)
                .overlay {
                    Text("观音灵签")
                        .font(.system(size: 52, weight: .medium, design: .serif))
                        .foregroundStyle(.white.opacity(0.5))
                        .blur(radius: 5)
                }
            
            // 副标题
            Text("求一签 知天命")
                .font(.system(size: 24, weight: .light, design: .serif))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .white,
                            Color(red: 1.0, green: 0.9, blue: 0.7)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .shadow(color: .yellow.opacity(glowIntensity * 0.3), radius: 10, x: 0, y: 0)
        }
        .padding(.top, 60)
        .onAppear {
            withAnimation(
                .easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
            ) {
                glowIntensity = 0.8
            }
        }
    }
}
