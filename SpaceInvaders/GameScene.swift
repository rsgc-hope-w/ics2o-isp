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
    
    var gameOverLabel: SKLabelNode!
    var youWinLabel: SKLabelNode!
    // Lets add your character
    let character = SKSpriteNode(imageNamed: "Character")
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        
        // Let's add where your Character is
        character.position = CGPoint(x: size.width / 2, y: 100)
        addChild(character)
        character.setScale(1.5)
        
        spawnEnemies()
        
    }
    
    func spawnEnemies() {
        // Adding the enemies for the first time
        for enemiesY in 1...4 {
            for enemiesX in 1...6 {
                let enemy = SKSpriteNode(imageNamed: "Enemies")
                
                enemy.anchorPoint = CGPoint(x: 0, y: 0)
                enemy.position = CGPoint(x: 50 * enemiesX, y: 475 + (enemiesY * 50))
                enemy.name = "enemy"
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
                
                // Make a location fo the ninth action
                let action9Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 200)
                
                // Make the ninth action
                let action9 = SKAction.move(to: action9Location, duration: duration)
                
                // Make a location for the tenth action
                let action10Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 200)
                
                // Make the tenth action
                let action10 = SKAction.move(to: action10Location, duration: duration)
                
                // Make a location for the eleventh action
                let action11Location = CGPoint(x: enemy.position.y - 50, y: enemy.position.y - 200)
                
                // Make the eleventh action
                let action11 = SKAction.move(to: action11Location, duration: duration)
                
                // Make a location for the twelfth action
                let action12Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 250)
                
                // Make the twelfth action
                let action12 = SKAction.move(to: action12Location, duration: duration)
                
                // Make a location for the thirteenth action
                let action13Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 250)
                
                // Make the thirteenth action
                let action13 = SKAction.move(to: action13Location, duration: duration)
                
                // Make a location for the fourteenth action
                let action14Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 250)
                
                //Make the fourteenth action
                let action14 = SKAction.move(to: action14Location, duration: duration)
                
                // Make a location for the fifteenth action
                let action15Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 300)
                
                // Make the fifteenth action
                let action15 = SKAction.move(to: action15Location, duration: duration)
                
                // Make a location for the sixteenth action
                let action16Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 300)
                
                // Make the sixteenth action
                let action16 = SKAction.move(to: action16Location, duration: duration)
                
                // Make a location for the seventeenth action
                let action17Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 300)
                
                // Make the seventeenth action
                let action17 = SKAction.move(to: action17Location, duration: duration)
                
                // Make a location for the eighteenth action
                let action18Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 350)
                
                // Make the eigteenth action
                let action18 = SKAction.move(to: action18Location, duration: duration)
                
                // Make a location for the ninteenth action
                let action19Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 350)
                
                // Make the ninteenth action
                let action19 = SKAction.move(to: action19Location, duration: duration)
                
                // Make a location for the twentieth action
                let action20Location =  CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 350)
                
                // Make the twentieth action
                let action20 = SKAction.move(to: action20Location, duration: duration)
                
                // Make a location for the twenty first action
                let action21Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 400)
                
                // Make the twenty first action
                let action21 = SKAction.move(to: action21Location, duration: duration)
                
                // Make a location for the twenty second action
                let action22Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 400)
                
                // Make the twenty second action
                let action22 = SKAction.move(to: action22Location, duration: duration)
                
                // Make a location for the twenty third action
                let action23Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 400)
                
                // Make the twenty third action
                let action23 = SKAction.move(to: action23Location, duration: duration)
                
                // Make a location for the twenty fourth action
                let action24Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 450)
                
                // Make the twenty fourth action
                let action24 = SKAction.move(to: action24Location, duration: duration)
                
                // Make a location for the twenty fifth action
                let action25Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 450)
                
                // Make the twenty fifth action
                let action25 = SKAction.move(to: action25Location, duration: duration)
                
                // Make a location for the twenty sixth action
                let action26Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 450)
                
                // Make the twenty sixth action
                let action26 = SKAction.move(to: action26Location, duration: duration)
                
                // Make a location for the twenty seventh action
                let action27Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 500)
                
                // Make the twenty seventh action
                let action27 = SKAction.move(to: action27Location, duration: duration)
                
                // Make a location for the twenty eighth action
                let action28Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 500)
                
                // Make the twenty eighth action
                let action28 = SKAction.move(to: action28Location, duration: duration)
                
                // Make a location for the twenty ninth action
                let action29Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 500)
                
                // Make the twenty ninth aciton
                let action29 = SKAction.move(to: action29Location, duration: duration)
                
                // Make a location for the thirtieth action
                let action30Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 550)
                
                // Make the thirtieth action
                let action30 = SKAction.move(to: action30Location, duration: duration)
                
                // Make a location for the thirty first action
                let action31Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 550)
                
                // Make the thirty first action
                let action31 = SKAction.move(to: action31Location, duration: duration)
                
                // Make a location for the thirty second action
                let action32Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 550)
                
                // Make the thirty second action
                let action32 = SKAction.move(to: action32Location, duration: duration)
                
                // Make a location for the thirty third action
                let action33Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 600)
                
                // Make the thirty third action
                let action33 = SKAction.move(to: action33Location, duration: duration)
                
                // Make a location for the thirty fourth action
                let action34Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 600)
                
                // Make the thirty fourth action
                let action34 = SKAction.move(to: action34Location, duration: duration)
                
                // Make a location for the thirty fifth action
                let action35Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 600)
                
                // Make the thirty fifth action
                let action35 = SKAction.move(to: action35Location, duration: duration)
                
                // Make a location for the thirty sixth action
                let action36Location = CGPoint(x: enemy.position.x - 50, y: enemy.position.y - 650)
                
                // Make the thirty sixth action
                let action36 = SKAction.move(to: action36Location, duration: duration)
                
                // Make a location for the thirty seventh action
                let action37Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 650)
                
                // Make the thirty seventh action
                let action37 = SKAction.move(to: action37Location, duration: duration)
                
                // Make a location for the thirty eighth action
                let action38Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 650)
                
                // Make the thirty eighth action
                let action38 = SKAction.move(to: action38Location, duration: duration)
                
                // Make a location for the thirty ninth action
                let action39Location = CGPoint(x: enemy.position.x + 50, y: enemy.position.y - 700)
                
                // Make the thirty ninth action
                let action39 = SKAction.move(to: action39Location, duration: duration)
                
                // Make a location for the fourtieth action
                let action40Location = CGPoint(x: enemy.position.x, y: enemy.position.y - 700)
                
                // Make the fourtieth action
                let action40 = SKAction.move(to: action40Location, duration: duration)
                
                
                // Create the sequence
                let EnemyActionSequence = SKAction.sequence([action3SecondWait, action1, action3SecondWait, action2, action3SecondWait, action3, action3SecondWait, action4, action3SecondWait, action5, action3SecondWait, action6, action3SecondWait, action7, action3SecondWait, action8, action3SecondWait, action9, action3SecondWait, action10, action3SecondWait, action11, action3SecondWait, action12, action3SecondWait, action13, action3SecondWait, action14, action3SecondWait, action15, action3SecondWait, action16, action3SecondWait, action17, action3SecondWait, action18, action3SecondWait, action19, action3SecondWait, action20, action3SecondWait, action21, action3SecondWait, action22, action3SecondWait, action23, action3SecondWait, action24, action3SecondWait, action25, action3SecondWait, action26, action3SecondWait, action27, action3SecondWait, action28, action3SecondWait, action29, action3SecondWait, action30, action3SecondWait, action31, action3SecondWait, action32, action3SecondWait, action33, action3SecondWait, action34, action3SecondWait, action35, action3SecondWait, action36, action3SecondWait, action37, action3SecondWait, action38, action3SecondWait, action39, action3SecondWait, action40])
                
                // Add the enemy to the scene
                addChild(enemy)
                

                
                // Make the sequence run
                enemy.run(actionRepeatSequence)
                
            }
        }
    }
    
    
    // Let's make a simple way to shoot the enemies
    func shootEnemy () {
        
        // Create an instance of the ammunition
        let ammunition = SKSpriteNode(imageNamed: "Ammunition")
        
        // Define the starting point of the ammunition
        let ammunitionStartingPosition = CGPoint(x: character.position.x, y: character.position.y)
        ammunition.position = ammunitionStartingPosition
        ammunition.setScale(0.01)
        ammunition.zPosition = 15
        
        // Give the obstacle a name
        ammunition.name = "ammunition"
        
        
        // Add the ammunition to the scene
        addChild(ammunition)
        
        // Move the ammunition
        let endingPosition = CGPoint(x: character.position.x, y: size.height + 5)
        let ammunitionMove = SKAction.move(to: endingPosition, duration: 5)
        
        
        // Removing the ammunition after being fired
        let actionRemove = SKAction.removeFromParent()
        
        // First ammunition Move is happening
        // Then after it is done, actionRemove takes its place
        let actionSequence = SKAction.sequence([ammunitionMove, actionRemove])
        ammunition.run(actionSequence)
        
    }
    
    // This function checks for collisions between the enemies and the ammunition
    func checkCollisions() {
        
        // Now find all of the enemies currently colliding with the ammunition
        enumerateChildNodes(withName: "enemy", using: {
            node, _ in
            
            // Get a reference
            let enemy = node as! SKSpriteNode
            self.checkBulletHit(for: enemy)
            
        })
        
    }
    
    // This function checks for collisions with all bullets for a given enemy
    func checkBulletHit(for enemy : SKSpriteNode) {
        
        // Now find all of the enemies currently colliding with this single piece of ammunition
        enumerateChildNodes(withName: "ammunition", using: {
            node, _ in
            
            // Get a reference
            let ammunition = node as! SKSpriteNode
            
            // Check to see if the enemies are colliding with the ammunition
            if enemy.frame.intersects(ammunition.frame) {
                // This ammunition hits the enemies
                enemy.removeFromParent()
                ammunition.removeFromParent()
            }
            
        })
        
    }
    
    // This is a function that runs everytime SpriteKit updates the game frame
    override func update(_ currentTime: TimeInterval) {
        // Check collisions between ammunition and Enemies
        checkCollisions()
        
    }
    
    // This method lets us move our character with a single touch
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
        
        // If top half of the screen, shoot, if bottom half, move
        if touchLocation.y >= size.height / 2 {
            shootEnemy()
        } else {
            character.run(actionMove)
            
            
        }
        
        
    }
}
