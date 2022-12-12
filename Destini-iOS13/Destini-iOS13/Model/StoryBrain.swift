//
//  StoryBrain.swift
//  Destini-iOS13
//


import Foundation

struct StoryBrain{
    var storyNumber=0
    let story = [
        Story(storyTitle: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right", choice1Destination: 1, choice2Destination: 2),
        Story(storyTitle: "You see a tiger", choice1: "Shout for help", choice2: "Play dead",choice1Destination: 0,choice2Destination: 0),
        Story(storyTitle: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps",choice1Destination: 0,choice2Destination: 0)
        ]
    func getStoryTitle()->String{
        return story[storyNumber].storyTitle
    }
    func getChoice1() -> String{
        return story[storyNumber].choice1
    }
    func getChoice2() -> String{
        return story[storyNumber].choice2
    }
    mutating func nextStory(userChoice:String){
        let currentStory = story[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
}


