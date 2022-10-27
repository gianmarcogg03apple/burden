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
    case .Warned :
        return "Warned"
    case .Submission :
        return "Submission"
    case .Impatient :
        return "Impatient"
    case .Powerful :
        return "Powerful"
    case .Worried :
        return "Worried"
    }
}

func getSpartito(theEmotion : Emotion) -> Spartito {
    switch theEmotion.emotionTitle {
    case .Sad :
        return Spartito(aPlay: [sad,powerful,remorse,disapointed,optimistic,optimistic,happy,loved,sad,powerful,warned,impatient,optimistic,optimistic,happy,optimistic])
    case .Afraid :
        return Spartito(aPlay:[afraid])
    case .Aggressiveness :
        return Spartito(aPlay:[aggressiveness])
    case .Angry :
        return Spartito(aPlay:[angry,contempt,afraid,optimistic,warned,powerful,warned,optimistic,afraid,angry,happy,loved,optimistic,disapointed,remorse,loved,happy])
    case .Anxious :
        return Spartito(aPlay:[anxious])
    case .Contempt :
        return Spartito(aPlay:[contempt])
    case .Disapointed :
        return Spartito(aPlay:[disapointed])
    case .Happy :
        return Spartito(aPlay:[happy])
    case .Loved :
        return Spartito(aPlay:[loved])
    case .Optimistic :
        return Spartito(aPlay:[optimistic])
    case .Remorse :
        return Spartito(aPlay:[remorse])
    case .Warned :
        return Spartito(aPlay:[warned])
    case .Submission :
        return Spartito(aPlay:[submission])
    case .Impatient :
        return Spartito(aPlay:[impatient])
    case .Powerful :
        return Spartito(aPlay:[powerful])
    case .Worried :
        return Spartito(aPlay:[worried])
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
