import SwiftUI

struct BambooTubeView: View {
    var body: some View {
        ZStack {
            // 竹筒底座
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.4, green: 0.3, blue: 0.1),
                            Color(red: 0.6, green: 0.4, blue: 0.2)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 200, height: 300)
            
            // 竹节纹理
            VStack(spacing: 30) {
                ForEach(0..<5) { _ in
                    Rectangle()
                        .fill(Color.black.opacity(0.3))
                        .frame(width: 180, height: 2)
                }
            }
            
            // 竹签
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color(red: 0.9, green: 0.8, blue: 0.7))
                    .frame(width: 4, height: 200)
                    .offset(x: CGFloat(index * 8 - 40))
                    .rotationEffect(.degrees(Double.random(in: -5...5)))
            }
        }
    }
}
