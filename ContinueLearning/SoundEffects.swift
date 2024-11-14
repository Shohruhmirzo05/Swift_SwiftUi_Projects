//
//  SoundEffects.swift
//  ContinueLearning
//
//  Created by Shohruhmirzo Alijonov on 19/07/24.
//

import SwiftUI
import AVKit

class SoundManager: ObservableObject {
   
    // this helps to create SoundManager one time when application opened, instead of creating every time, when we call it
    static let instance = SoundManager() // Singelton
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case tada
        case badum
    }
    
    func playSound(sound: SoundOption){
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else{
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url )
            player?.play()
        } catch let error{
            print("Error playing Sound: \(error.localizedDescription)")
        }
    }
}

struct SoundEffects: View {
    
    // static instance inside the class can do function of this
    //@StateObject var soundManager: SoundManager = SoundManager()
    
    var body: some View {
        VStack{
            Button("Sound 1"){
                SoundManager.instance.playSound(sound: .badum)
            }
            Button("Sound 1"){
                SoundManager.instance.playSound(sound: .tada)
            }
        }
    }
}

#Preview {
    SoundEffects()
}
