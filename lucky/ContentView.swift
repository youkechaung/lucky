//
//  ContentView.swift
//  lucky
//
//  Created by chloe on 2024/12/27.
//

import SwiftUI

struct ContentView: View {
    @State private var mainText: String = ""
    @State private var interpretation: String = ""
    @State private var goodActivities: String = ""
    @State private var badActivities: String = ""
    @State private var isAnimating = false
    @State private var showTaiji = true
    @State private var selectedTab = 0
    
    // 渐变色
    private let gradientColors = [
        Color(red: 0.1, green: 0.1, blue: 0.2),
        Color(red: 0.15, green: 0.15, blue: 0.25),
        Color(red: 0.2, green: 0.2, blue: 0.3)
    ]
    
    var body: some View {
        ZStack {
            // 动态背景
            GeometryReader { geometry in
                ZStack {
                    // 主背景渐变
                    LinearGradient(gradient: Gradient(colors: gradientColors),
                                 startPoint: .top,
                                 endPoint: .bottom)
                    .ignoresSafeArea()
                    
                    // 动态光效
                    ForEach(0..<3) { index in
                        Circle()
                            .fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [
                                        Color.purple.opacity(0.2),
                                        Color.clear
                                    ]),
                                    center: .center,
                                    startRadius: 1,
                                    endRadius: geometry.size.width
                                )
                            )
                            .scaleEffect(1.5)
                            .offset(
                                x: CGFloat.random(in: -geometry.size.width/2...geometry.size.width/2),
                                y: CGFloat.random(in: -geometry.size.height/2...geometry.size.height/2)
                            )
                            .blur(radius: 50)
                    }
                    
                    // 星点效果
                    ForEach(0..<20) { index in
                        Circle()
                            .fill(Color.white.opacity(0.1))
                            .frame(width: CGFloat.random(in: 2...6))
                            .position(
                                x: CGFloat.random(in: 0...geometry.size.width),
                                y: CGFloat.random(in: 0...geometry.size.height)
                            )
                            .animation(
                                Animation.linear(duration: Double.random(in: 2...5))
                                    .repeatForever(),
                                value: isAnimating
                            )
                    }
                }
            }
            
            // 主要内容
            TabView(selection: $selectedTab) {
                // 第一页：太极
                VStack(spacing: 30) {
                    Spacer()
                        .frame(height: 20)
                    
                    // 标题
                    VStack(spacing: 8) {
                        Text("量子易经")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        
                        Text("Ancient Wisdom Meets Quantum Future")
                            .font(.system(size: 16, design: .rounded))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 40)
                    
                    // 太极图
                    TaijiView()
                        .frame(height: 400)
                        .scaleEffect(showTaiji ? 1 : 0.1)
                        .opacity(showTaiji ? 1 : 0)
                        .onAppear {
                            withAnimation(.spring(dampingFraction: 0.8)) {
                                showTaiji = true
                            }
                        }
                    
                    Spacer()
                    
                    // 刷新按钮
                    Button(action: {
                        withAnimation(.spring(dampingFraction: 0.7)) {
                            showTaiji = false
                            updateFortune()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                withAnimation(.spring(dampingFraction: 0.7)) {
                                    showTaiji = true
                                    // 切换到结果页面
                                    withAnimation {
                                        selectedTab = 1
                                    }
                                }
                            }
                        }
                    }) {
                        HStack(spacing: 12) {
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .font(.system(size: 20))
                            Text("重新演算")
                                .font(.system(size: 18, weight: .medium))
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 15)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color.purple.opacity(0.7),
                                            Color.blue.opacity(0.7)
                                        ]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white.opacity(0.3), lineWidth: 1)
                        )
                        .shadow(color: Color.purple.opacity(0.3), radius: 10, x: 0, y: 5)
                    }
                    
                    Spacer()
                        .frame(height: 40)
                }
                .tag(0)
                
                // 第二页：卦象解析
                VStack(spacing: 0) {
                    HeaderView(title: "卦象解析", subtitle: "Daily Hexagram")
                    
                    ScrollView {
                        VStack(spacing: 25) {
                            FortuneCard(
                                title: "卦象",
                                subtitle: "Hexagram",
                                content: mainText,
                                systemImage: "hexagon"
                            )
                            
                            FortuneCard(
                                title: "诠释",
                                subtitle: "Interpretation",
                                content: interpretation,
                                systemImage: "text.book.closed"
                            )
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                }
                .tag(1)
                
                // 第三页：宜忌
                VStack(spacing: 0) {
                    HeaderView(title: "今日宜忌", subtitle: "Daily Guidance")
                    
                    ScrollView {
                        VStack(spacing: 25) {
                            FortuneCard(
                                title: "宜",
                                subtitle: "Favorable",
                                content: goodActivities,
                                systemImage: "checkmark.circle",
                                gradientColors: [.green.opacity(0.7), .blue.opacity(0.7)]
                            )
                            
                            FortuneCard(
                                title: "忌",
                                subtitle: "Unfavorable",
                                content: badActivities,
                                systemImage: "xmark.circle",
                                gradientColors: [.red.opacity(0.7), .orange.opacity(0.7)]
                            )
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                }
                .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
        .preferredColorScheme(.dark)
        .onAppear {
            isAnimating = true
            showTaiji = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                updateFortune()
            }
        }
    }
    
    private func updateFortune() {
        let (main, interp, good, bad) = LuckyCalculator.getDailyFortune(date: Date())
        mainText = main
        interpretation = interp
        goodActivities = good
        badActivities = bad
    }
}

struct HeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.system(size: 30, weight: .bold, design: .rounded))
            Text(subtitle)
                .font(.system(size: 16, design: .rounded))
                .foregroundColor(.white.opacity(0.7))
        }
        .padding(.top, 40)
        .padding(.bottom, 10)
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 0.1, green: 0.1, blue: 0.2).opacity(0.9), .clear]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

struct FortuneCard: View {
    let title: String
    let subtitle: String
    let content: String
    let systemImage: String
    var gradientColors: [Color] = [.purple.opacity(0.7), .blue.opacity(0.7)]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: systemImage)
                    .font(.system(size: 24))
                    .foregroundColor(.white.opacity(0.9))
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white.opacity(0.9))
                    
                    Text(subtitle)
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.7))
                }
            }
            
            Text(content)
                .font(.system(size: 16))
                .foregroundColor(.white.opacity(0.8))
                .fixedSize(horizontal: false, vertical: true)
                .padding(.leading, 4)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.white.opacity(0.1),
                            Color.white.opacity(0.05)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: gradientColors),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ContentView()
        }
    }
}
