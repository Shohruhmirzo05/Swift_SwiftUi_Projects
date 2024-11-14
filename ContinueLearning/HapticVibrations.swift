//
//  HapticVibrations.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

import SwiftUI

class HapticManager {
    
 // @State  var showNotification: Bool = false
    
  static let instance = HapticManager() // Singelton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticVibrations: View {
    var body: some View {
        VStack(spacing: 20 ){
            Button("success 1"){
                HapticManager.instance.notification(type: .success) }
            Button("error 2"){
                HapticManager.instance.notification(type: .error) }
            Button("warning 3"){
                HapticManager.instance.notification(type: .warning) }
            Divider()
            Button("soft 1"){
                HapticManager.instance.impact(style: .soft) }
            Button("heavy 2"){
                HapticManager.instance.impact(style: .heavy) }
            Button("medium 3"){
                HapticManager.instance.impact(style: .medium) }
            Button("rigid 4"){
                HapticManager.instance.impact(style: .rigid) }
            Button("ligt 5"){
                HapticManager.instance.impact(style: .light) }
        }
    }
}

#Preview {
    HapticVibrations()
}
