//
//  LocalPushNotifications.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

// NOT FULLY COVERED

import SwiftUI
import UserNotifications

class NotificationManager{
    static let instance = NotificationManager() // singelton
    
    // this function requests Authorithation from user to send Notifications
    func requestAuthorization(){
        let options: UNAuthorizationOptions = [
            .alert, .sound, .badge
        ]
        UNUserNotificationCenter.current().requestAuthorization(options: options) {(success, error) in
            if let error = error {
                print("Error occured \(error)")
            } else {
                print("success \(success)")
            }
        }
    }
    
    func scheduleNotification(){
        
        let content = UNMutableNotificationContent()
        content.title = "this was first notfiication"
        content.subtitle = "subbbbb titleee"
        content.sound = .default
        //content.badge = 1
        
        // TRIGGER types : --->
        // time
        // calender
        // location
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}


struct LocalPushNotifications: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Title request"){
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule notification "){
                NotificationManager.instance.scheduleNotification()
            }
        }
        .onAppear{
            //UIApplication.shared.app
            //UNUserNotificationCenter.setBadgeCount:withCompletionHandler
            UNUserNotificationCenter.current().setBadgeCount(2)
        }
    }
}

#Preview {
    LocalPushNotifications()
}
