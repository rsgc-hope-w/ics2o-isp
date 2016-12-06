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
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        for enemiesY in 1...4 {
            for enemiesX in 1...6 {
                let enemy = SKSpriteNode(imageNamed: "Enemies")
                enemy.anchorPoint = CGPoint(x: 0, y: 0)
                enemy.position = CGPoint(x: 50 * enemiesX, y: 350 + (enemiesY * 50))
                enemy.setScale(0.08)
                addChild(enemy)
            }
        }
    }
    
}
