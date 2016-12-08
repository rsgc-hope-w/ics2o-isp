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
        character.position = CGPoint(x: 200, y: 100)
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
    
}



