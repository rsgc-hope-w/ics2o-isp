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
                
                // Make a wait action
                let action5SecondWait = SKAction.wait(forDuration: duration)
                
                // Make a down location
                let furtherDownLocation = CGPoint(x: enemy.position.x, y: enemy.position.y - 100)
                
                // Make a down action
                let actionDown = SKAction.move(to: furtherDownLocation, duration: duration)
                
                // Make a right location
                let toTheRightLocation = CGPoint(x: enemy.position.x + 100, y: enemy.position.y)
                
                // Make a down action
                let actionRight = SKAction.move(to: toTheRightLocation, duration: duration)
                
                // Make a left location
                let toTheLeftLocation = CGPoint(x: enemy.position.x - 100, y: enemy.position.y)
                
                // Make a left action
                let actionLeft = SKAction.move(to: toTheLeftLocation, duration: duration)
                
                // Create the sequence
                let actionSequence = SKAction.sequence([action5SecondWait, actionDown, action5SecondWait, actionRight, action5SecondWait, actionDown, action5SecondWait, actionLeft, actionLeft, action5SecondWait, actionDown, actionRight])
                
                // Add the enemy to the scene
                addChild(enemy)
                
                // Make the sequence run
                enemy.run(actionSequence)
                
                
                
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
