//
//  OnePlayerGameFunc.swift
//  Burden
//
//  Created by Sarah Ndenbe on 26/10/22.
//

import Foundation


func getEmotionName(theEmotion : EmotionName) -> String {
    switch theEmotion {
    case .Sad :
        return "Sad"
    case .Afraid :
        return "Afraid"
    case .Aggressiveness :
        return "Aggressiveness"
    case .Angry :
        return "Angry"
    case .Anxious :
        return "Anxious"
    case .Contempt :
        return "Contempt"
    case .Disapointed :
        return "Disapointed"
    case .Happy :
        return "Happy"
    case .Loved :
        return "Loved"
    case .Optimistic :
        return "Optimistic"
    case .Remorse :
        return "Remorse"
    case .Shocked :
        return "Shocked"
    case .Submission :
        return "Submission"
    case .Disgusted :
        return "Disgusted"
    case .Strong :
        return "Strong"
    case .Worried :
        return "Worried"
    }
}

func getSpartito(theEmotion : Emotion) -> Spartito {
    switch theEmotion.emotionTitle {
    case .Sad :
        return Spartito(aPlay: [Sad,Strong,Remorse,Disapointed,Optimistic,Optimistic,Happy,Loved,Sad,Strong,Shocked,Disapointed,Optimistic,Optimistic,Happy,Optimistic])
    case .Afraid :
        return Spartito(aPlay:[Afraid])
    case .Aggressiveness :
        return Spartito(aPlay:[Aggressiveness])
    case .Angry :
        return Spartito(aPlay:[Angry])
    case .Anxious :
        return Spartito(aPlay:[Anxious])
    case .Contempt :
        return Spartito(aPlay:[Contempt])
    case .Disapointed :
        return Spartito(aPlay:[Disapointed])
    case .Happy :
        return Spartito(aPlay:[Happy])
    case .Loved :
        return Spartito(aPlay:[Loved])
    case .Optimistic :
        return Spartito(aPlay:[Optimistic])
    case .Remorse :
        return Spartito(aPlay:[Remorse])
    case .Shocked :
        return Spartito(aPlay:[Shocked])
    case .Submission :
        return Spartito(aPlay:[Submission])
    case .Disgusted :
        return Spartito(aPlay:[Disgusted])
    case .Strong :
        return Spartito(aPlay:[Strong])
    case .Worried :
        return Spartito(aPlay:[Worried])
    }
}
/*
func displaySpartito(theSpartito : [String]){
    for emotion in theSpartito[emotion] {
        return theSpartito.firstIndex(of: emotion)
    }
    return theSpartito
}

*/
