//
//  GameScene.swift
//  spriteTest
//
//  Created by MattHew Phraxayavong on 10/23/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import SpriteKit
import UIKit
import GameplayKit

class GameScene: SKScene {
    var gameLogo: SKLabelNode!
    var bestScore: SKLabelNode!
    var playButton: SKShapeNode!
    var gameViewController: GameViewController!
    let asteroid = SKSpriteNode()
    let wingRed = SKSpriteNode()
    let wingGreen = SKSpriteNode()
    var shipClasses = shipClass()
    let shipCategory:UInt32 = 0x1 << 0
    let debrisCategory:UInt32 = 0x1 << 1
    
    
    
    
    override func didMove(to view: SKView) {
        // calling function for ship to spawn

//        makeShip()
//        spawnDebris()
        startGame()
//        makeBall()
        
        //randomly spawns debris and has them drop and  then removed once it gets  to the bottom
        

        let action = SKAction.run {
            self.spawnDebris()
        }
        let wait = SKAction.wait(forDuration: 1.0)
        let spawnSequence = SKAction.sequence([action, wait, action, wait])
        let repeatSpawn = SKAction.repeatForever(spawnSequence)
        self.run(repeatSpawn)
        
    }
    
    // used in the SpawnDebris function for the variable randomPositionX.
        func random(_ n:Int) -> Int
           {
               return Int(arc4random_uniform(UInt32(n)))
           }
        // Presents menu scene
    func startGame() {
//        let menuScene = MenuScene(size: size)
//        menuScene.scaleMode = scaleMode
//        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
//        view?.presentScene(menuScene, transition: reveal)
//        print("should have presented menu")
        makeShip()
        spawnDebris()
    }
    
    // create the ship for the user
    func makeShip() {
        let shipRadius: CGFloat = 200
        shipClasses.position = CGPoint(x: frame.midX, y: frame.midY - 400)
        shipClasses.physicsBody = SKPhysicsBody(circleOfRadius: shipRadius)
//        shipClasses.physicsBody = SKPhysicsBody(edgeLoopFrom: view!.bounds)
        shipClasses.physicsBody?.affectedByGravity = false
        shipClasses.physicsBody?.collisionBitMask = debrisCategory
        addChild(shipClasses)
    }
    

    // just messing around with physics
    func makeBall() {
        let ballRadius: CGFloat = 20
        let redBall = SKShapeNode(circleOfRadius: ballRadius)
        redBall.fillColor = .red
        redBall.position = CGPoint(x: 280, y: 320)
        redBall.physicsBody = SKPhysicsBody(circleOfRadius: ballRadius)
        
        self.addChild(redBall)
        
        let blueBall = SKShapeNode(circleOfRadius: ballRadius)
        blueBall.fillColor = .blue
        blueBall.position = CGPoint(x: 360, y: 320)
        blueBall.physicsBody = SKPhysicsBody(circleOfRadius: ballRadius)
        
        self.addChild(blueBall)
        
        var splinePoints = [CGPoint(x: 0, y: 300),
                            CGPoint(x: 100, y: 50),
                            CGPoint(x: 400, y: 110),
                            CGPoint(x: 640, y: 20)]
        let ground = SKShapeNode(splinePoints: &splinePoints,
                                 count: splinePoints.count)
        ground.physicsBody = SKPhysicsBody(edgeChainFrom: ground.path!)
        ground.physicsBody?.restitution = 0.75
        
        self.addChild(ground)
        
    }
   
    // created an array with different debris and have them spawn randomly and move down the screen
    func spawnDebris() {
        let moveNodeDown = SKAction.moveTo(y: -15, duration: 1)
//        let repeatForever = SKAction.repeatForever(moveNodeDown)
        let delete = SKAction.removeFromParent()
        let radius: CGFloat = 100
        let seq = SKAction.sequence([moveNodeDown, delete])
        let asteroid = SKSpriteNode(imageNamed: "meteorBrown_big3")
        
        let wingRed = SKSpriteNode(imageNamed: "wingRed_2")
        let wingGreen = SKSpriteNode(imageNamed: "wingGreen_6")
        let debrisArray = [asteroid, wingRed, wingGreen]
        for i in debrisArray {
            i.name = "randomDebris"
            i.physicsBody = SKPhysicsBody(circleOfRadius: radius)
            i.physicsBody?.categoryBitMask  = debrisCategory
            i.physicsBody?.restitution = 0.75
        }
        var randomIndex: Int = 0
        var randomDebris = SKSpriteNode()
        
        randomIndex = Int.random(in: 0...2)
        
        randomDebris = debrisArray[randomIndex]
        randomDebris.run(seq)
//        randomDebris.name = "randomDebris"
        let randomPositionX  = CGFloat.random(in: 0..<size.width)
        let positionX = CGFloat(randomPositionX)
        randomDebris.position.x = positionX
        randomDebris.position.y = (view?.bounds.height)!
        
        addChild(randomDebris)

        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "play_button" {
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
    }

    //    // ship moves with mouse/finger location
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let touchLocation = touch.location(in: self)
            let move = SKAction.move(to: touchLocation, duration: 1)
            shipClasses.run(move)
        }
    }

    
    
    override func update(_ currentTime: TimeInterval) {
            checkCollisions()
        }
      
        
        func collision(with node: SKSpriteNode) {
            print("Hey something just happened! \(Int.random(in: 0...1000))")
        }
        
        func checkCollisions() {
            var hits: [SKSpriteNode] = []
            self.enumerateChildNodes(withName: "randomDebris") { node, _ in
                let randomDebris = node as! SKSpriteNode
                let collisionFrame = CGRect(x: self.shipClasses.frame.minX + 10, y: self.shipClasses.frame.minY + 10, width: self.shipClasses.frame.width - 20, height: self.shipClasses.frame.height - 20)
                if randomDebris.frame.intersects(collisionFrame) {
                    hits.append(randomDebris)
                }
            }
            
            for node in hits {
                collision(with: node)
            }
        }
    }
  

