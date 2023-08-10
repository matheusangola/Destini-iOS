//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [Story(text: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(text: "You see a Tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(text: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    mutating func nextStory(userChoice: String){
        
        if userChoice == stories[storyNumber].choice1 {
            storyNumber += 1
        } else {
            storyNumber += 2
        }
    }
    
    func getStoryText() -> String {
        return stories[storyNumber].text
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
