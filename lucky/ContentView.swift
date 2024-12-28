import SwiftUI
import CoreMotion
import AVFoundation
import AudioToolbox

struct ContentView: View {
    @State private var mainText: String = ""
    @State private var interpretation: String = ""
    @State private var goodActivities: String = ""
    @State private var badActivities: String = ""
    @State private var showResult = false
    @State private var isShaking = false
    @State private var lastShakeTime = Date()
    @State private var stickRotation: Double = 0
    @State private var stickOffset: CGFloat = 0
    @State private var selectedStickOffset: CGFloat = 0
    @State private var selectedStickRotation: Double = 0
    @State private var showSelectedStick = false
    @State private var shakeTimer: Timer?
    @State private var selectedSigns: [DivinationSign] = []
    @State private var currentShakeCount = 0
    @State private var shakePrompt = "摇动手机抽出第一支签"
    
    // 摇动检测
    private let motionManager = CMMotionManager()
    
    // 渐变色
    private let gradientColors = [
        Color(red: 0.1, green: 0.1, blue: 0.2),
        Color(red: 0.15, green: 0.15, blue: 0.25),
        Color(red: 0.2, green: 0.2, blue: 0.3)
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 背景
                TempleBackgroundView()
                
                VStack {
                    if !showResult {
                        VStack(spacing: 40) {
                            // 标题
                            TitleView()
                            
                            Spacer()
                            
                            // 竹签筒
                            ModernBambooTubeView(isShaking: $isShaking)
                                .scaleEffect(1.2)
                            
                            Spacer()
                            
                            // 提示文字
                            Text("摇晃手机抽签")
                                .font(.system(size: 20, weight: .light, design: .serif))
                                .foregroundColor(.white.opacity(0.8))
                                .padding(.horizontal, 30)
                                .padding(.vertical, 15)
                                .background(
                                    Capsule()
                                        .fill(Color.white.opacity(0.1))
                                        .blur(radius: 5)
                                )
                                .padding(.bottom, 50)
                        }
                    } else {
                        // 显示最终结果
                        ScrollView {
                            VStack(spacing: 30) {
                                if let sign = selectedSigns.first {
                                    // 签号和标题
                                    Text(sign.title)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.top)
                                    
                                    // 签诗
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("签诗")
                                            .font(.headline)
                                            .foregroundColor(.yellow)
                                        Text(sign.poem)
                                            .font(.body)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.black.opacity(0.3))
                                            )
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    
                                    // 解签
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("解签")
                                            .font(.headline)
                                            .foregroundColor(.yellow)
                                        Text(sign.explanation)
                                            .font(.body)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.black.opacity(0.3))
                                            )
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    
                                    // 运势
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("运势")
                                            .font(.headline)
                                            .foregroundColor(.yellow)
                                        Text(sign.fortune)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.black.opacity(0.3))
                                            )
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    
                                    // 建议
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("建议")
                                            .font(.headline)
                                            .foregroundColor(.yellow)
                                        Text(sign.advice)
                                            .font(.body)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.black.opacity(0.3))
                                            )
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                }
                                
                                // 重新抽签按钮
                                Button(action: resetDivination) {
                                    Text("重新抽签")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.blue)
                                        )
                                }
                                .padding(.horizontal)
                                .padding(.top, 20)
                            }
                            .padding(.bottom, 30)
                        }
                    }
                }
                .padding()
            }
        }
        .onAppear {
            startMotionDetection()
        }
        .onDisappear {
            stopMotionDetection()
        }
    }
    
    private func startMotionDetection() {
        guard motionManager.isDeviceMotionAvailable else { return }
        
        motionManager.deviceMotionUpdateInterval = 0.1
        motionManager.startDeviceMotionUpdates(to: .main) { (data, error) in
            guard let data = data else { return }
            
            if let acceleration = data.userAcceleration.x as Double? {
                if abs(acceleration) > 2.0 {
                    let currentTime = Date()
                    if currentTime.timeIntervalSince(lastShakeTime) > 1.0 {
                        lastShakeTime = currentTime
                        if !isShaking && currentShakeCount < 1 {
                            startShaking()
                        }
                    }
                } else if isShaking {
                    stopShaking()
                }
            }
        }
    }
    
    private func startShaking() {
        isShaking = true
        // 播放系统触觉反馈
        AudioServicesPlaySystemSound(1519) // 持续的震动反馈
        
        // 开始定时播放系统音效
        shakeTimer?.invalidate()
        shakeTimer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
            AudioServicesPlaySystemSound(1104) // 系统滴答声
        }
    }
    
    private func stopShaking() {
        isShaking = false
        // 停止系统触觉反馈和音效
        AudioServicesPlaySystemSound(1520) // 结束的震动反馈
        shakeTimer?.invalidate()
        shakeTimer = nil
        
        // 播放结束音效
        AudioServicesPlaySystemSound(1123) // 系统完成音效
        
        handleShake()
    }
    
    private func stopMotionDetection() {
        motionManager.stopDeviceMotionUpdates()
        shakeTimer?.invalidate()
        shakeTimer = nil
    }
    
    private func handleShake() {
        if currentShakeCount < 1 {
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            let randomSign = DivinationSignData.getRandomSign()
            selectedSigns = [randomSign]
            currentShakeCount += 1
            
            withAnimation(.spring()) {
                showResult = true
            }
        }
    }
    
    private func resetDivination() {
        // 播放按钮音效
        AudioServicesPlaySystemSound(1104)
        
        // 重置所有状态
        withAnimation(.easeInOut(duration: 0.3)) {
            showResult = false
            showSelectedStick = false
            selectedSigns = []
            currentShakeCount = 0
            shakePrompt = "摇动手机抽出第一支签"
            mainText = ""
            interpretation = ""
            goodActivities = ""
            badActivities = ""
        }
    }
}
