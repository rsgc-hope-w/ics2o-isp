//
//  GameScene.swift
//  SpaceInvaders
//
//  Created by Will Hope on 2016-11-24.
//  Copyright © 2016 Will Hope. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    // Lets add your character
    let character = SKSpriteNode(imageNamed: "Character")
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        // Let's add where your Character is
        character.position = CGPoint(x: size.width / 2, y: 100)
        addChild(character)
        character.setScale(1.5)
        
        // Adding the enemies for the first time
        for enemiesY in 1...4 {
            for enemiesX in 1...6 {
                let enemy = SKSpriteNode(imageNamed: "Enemies")
                enemy.anchorPoint = CGPoint(x: 0, y: 0)
                enemy.position = CGPoint(x: 50 * enemiesX, y: 475 + (enemiesY * 50))
                enemy.setScale(0.05)
                
                // Set a duration value
                let duration : TimeInterval = 1
                
                // Set a value for how far the enemies move
                
                
                // Make a wait action
                let action3SecondWait = SKAction.wait(forDuration: duration)
                
                // Make a location for the first action
                let action1Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 50)
                
                // Make the first action
                let action1 = SKAction.move(to: action1Location, duration: duration)
                
                // Make a location for the second action
                let action2Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 50)
                
                // Make the Second action
                let action2 = SKAction.move(to: action2Location, duration: duration)
                
                // Make a location for the third action
                let action3Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 100)
                
                // Make the third action
                let action3 = SKAction.move(to: action3Location, duration: duration)
                
                // Make a location for the fourth action
                let action4Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 100)
                
                // Make the fourth action
                let action4 = SKAction.move(to: action4Location, duration: duration)
                
                // Make a location for the fifth action
                let action5Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 100)
                
                // Make the fifth action
                let action5 = SKAction.move(to: action5Location, duration: duration)
                
                // Make a location for the sixth action
                let action6Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 150)
                
                // Make the sixth action
                let action6 = SKAction.move(to: action6Location, duration: duration)
                
                // Make a location for the seventh action
                let action7Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 150)
                
                // Make the seventh action
                let action7 = SKAction.move(to: action7Location, duration: duration)
                
                // Make a location for the eigth action
                let action8Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 150)
                
                // Make the eigth action
                let action8 = SKAction.move(to: action8Location, duration: duration)
                
                // Create the sequence
                let actionSequence = SKAction.sequence([action3SecondWait, action1, action3SecondWait, action2, action3SecondWait, action3, action3SecondWait, action4, action3SecondWait, action5, action3SecondWait, action6, action3SecondWait, action7, action3SecondWait])
                
                // Add the enemy to the scene
                addChild(enemy)
                
                // Set the sequence up to run forever
                let actionRepeatSequence = SKAction.repeatForever(actionSequence)
                
                // Make the sequence run
                enemy.run(actionRepeatSequence)
                
                
                
            }
        }
        

        
    }
    
    // This method lets us move our character with a single touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Our fingers are big when we touch a screen
        guard let touch = touches.first else {
            return
        }
        // Get the location of the first touch
        let touchLocation = touch.location(in: self)
        
        // Printing the location of the touch out in the console
        print(touchLocation.x)
        print(character.position.x)
        
        // Finding the distance between the two touch points
        let distance = abs(character.position.x - touchLocation.x)
        
        // Now that we have found the distance, we now find the speed
        
        let speed :CGFloat = 75
        
        let time = distance/speed
        
        // Making your character move horizontally toward your touch
        let destination = CGPoint(x: touchLocation.x, y: character.position.y)
        
        // Create an action
        let actionMove = SKAction.move(to: destination, duration: TimeInterval(time))
        
        // Tell the Character sprite to move
        character.run(actionMove)
        
        
    }
    
    
    
}
