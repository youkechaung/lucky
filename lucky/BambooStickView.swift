import SwiftUI

struct BambooStickView: View {
    var rotation: Double
    var offset: CGFloat
    var text: String = ""
    var showText: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            // 竹签头部
            RoundedRectangle(cornerRadius: 2)
                .fill(Color(red: 0.82, green: 0.72, blue: 0.53))
                .frame(width: 4, height: 20)
            
            // 竹签主体
            RoundedRectangle(cornerRadius: 2)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.82, green: 0.72, blue: 0.53),
                            Color(red: 0.76, green: 0.69, blue: 0.50)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 4, height: 150)
            
            // 竹签底部（写字的部分）
            ZStack {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color(red: 0.82, green: 0.72, blue: 0.53))
                    .frame(width: 25, height: 80)
                
                if showText {
                    Text(text)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(90))
                }
            }
        }
        .rotation3DEffect(.degrees(rotation), axis: (x: 0, y: 1, z: 0))
        .offset(x: offset)
        .shadow(color: .black.opacity(0.2), radius: 2, x: 1, y: 1)
    }
}

struct SelectedBambooStickView: View {
    var text: String
    var rotation: Double = 0
    
    var body: some View {
        HStack(spacing: 0) {
            // 竹签头部
            RoundedRectangle(cornerRadius: 2)
                .fill(Color(red: 0.82, green: 0.72, blue: 0.53))
                .frame(width: 20, height: 4)
            
            // 竹签主体
            RoundedRectangle(cornerRadius: 2)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.82, green: 0.72, blue: 0.53),
                            Color(red: 0.76, green: 0.69, blue: 0.50)
                        ]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 150, height: 4)
            
            // 竹签底部（写字的部分）
            ZStack {
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color(red: 0.82, green: 0.72, blue: 0.53))
                    .frame(width: 80, height: 25)
                
                Text(text)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
            }
        }
        .rotationEffect(.degrees(rotation))
        .shadow(color: .black.opacity(0.2), radius: 2, x: 1, y: 1)
    }
}

struct BambooContainer: View {
    var body: some View {
        ZStack {
            // 竹筒
            Cylinder()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 0.76, green: 0.69, blue: 0.50),
                            Color(red: 0.62, green: 0.55, blue: 0.37)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 100, height: 200)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(Color(red: 0.82, green: 0.72, blue: 0.53), lineWidth: 4)
                )
        }
    }
}

struct Cylinder: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addEllipse(in: CGRect(x: 0, y: 0, width: rect.width, height: 20))
        path.addRect(CGRect(x: 0, y: 10, width: rect.width, height: rect.height - 20))
        path.addEllipse(in: CGRect(x: 0, y: rect.height - 20, width: rect.width, height: 20))
        
        return path
    }
}

#Preview {
    ZStack {
        Color.black
        VStack {
            BambooStickView(rotation: 0, offset: 0, text: "第1签", showText: true)
            SelectedBambooStickView(text: "第1签")
        }
    }
}
