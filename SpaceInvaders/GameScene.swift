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
                addChild(enemy)
                
                
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
