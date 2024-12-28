import SwiftUI

struct WiseManView: View {
    var body: some View {
        ZStack {
            // 头部和脸部
            Circle()
                .fill(Color.white)
                .frame(width: 100, height: 100)
            
            // 白胡子
            Path { path in
                path.move(to: CGPoint(x: 50, y: 60))
                path.addCurve(
                    to: CGPoint(x: 90, y: 80),
                    control1: CGPoint(x: 60, y: 65),
                    control2: CGPoint(x: 75, y: 70)
                )
            }
            .stroke(Color.white, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: 50, y: 65))
                path.addCurve(
                    to: CGPoint(x: 85, y: 90),
                    control1: CGPoint(x: 60, y: 75),
                    control2: CGPoint(x: 70, y: 80)
                )
            }
            .stroke(Color.white, lineWidth: 3)
            
            // 眼睛
            Circle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .offset(x: -15, y: -5)
            
            Circle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .offset(x: 15, y: -5)
            
            // 眉毛
            Path { path in
                path.move(to: CGPoint(x: 25, y: -15))
                path.addLine(to: CGPoint(x: 45, y: -20))
            }
            .stroke(Color.black, lineWidth: 2)
            
            Path { path in
                path.move(to: CGPoint(x: 55, y: -20))
                path.addLine(to: CGPoint(x: 75, y: -15))
            }
            .stroke(Color.black, lineWidth: 2)
        }
        .frame(width: 200, height: 200)
    }
}
