//
//  DebrisClass.swift
//  spriteTest
//
//  Created by MattHew Phraxayavong on 10/30/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import SpriteKit

class DebrisClass: SKSpriteNode {
    
    
    init() {
        
        let texture = SKTexture(imageNamed: "ship")
//        let texture = spawnDebris()
        
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//        func spawnDebris() {
//            let moveNodeDown = SKAction.moveTo(y: -15, duration: 1)
//            let repeatForever = SKAction.repeatForever(moveNodeDown)
//            let delete = SKAction.removeFromParent()
//            let seq = SKAction.sequence([moveNodeDown, delete])
//            let asteroid = SKSpriteNode(imageNamed: "meteorBrown_big3")
//
//            let wingRed = SKSpriteNode(imageNamed: "wingRed_2")
//            let wingGreen = SKSpriteNode(imageNamed: "wingGreen_6")
//            let debrisArray = [asteroid, wingRed, wingGreen]
//            for i in debrisArray {
//                i.name = "randomDebris"
//            }
//            var randomIndex: Int = 0
//            var randomDebris = SKSpriteNode()
//
//            randomIndex = Int.random(in: 0...2)
//
//            randomDebris = debrisArray[randomIndex]
//            randomDebris.run(seq)
//    //        randomDebris.name = "randomDebris"
//            let randomPositionX  = CGFloat.random(in: 0..<size.width)
//            let positionX = CGFloat(randomPositionX)
//            randomDebris.position.x = positionX
//            randomDebris.position.y = (view?.bounds.height)!
//
//            addChild(randomDebris)
//        }
//
}


