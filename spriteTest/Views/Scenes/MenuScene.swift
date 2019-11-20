//
//  MenuScene.swift
//  spriteTest
//
//  Created by MattHew Phraxayavong on 11/18/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import SpriteKit
import GameKit

class MenuScene: SKScene {
    var gameTitle = SKLabelNode()
    var playButton = SKShapeNode()
    var game = GameScene()
    //    var bestScore =
    
    override func didMove(to view: SKView) {
        if let view = self.view {
            //Create game title
            //            gameTitle = SKLabelNode(fontNamed: "ArialRoundedMTBold")
            self.gameTitle.zPosition = 2
            self.gameTitle.position = CGPoint(x: view.bounds.width/2, y: (view.bounds.height / 2) + 20)
            self.gameTitle.fontSize = 60
            self.gameTitle.text = "Astrojunky"
            self.gameTitle.fontColor = SKColor.red
            
            //Create best score label
            //    bestScore = SKLabelNode(fontNamed: "ArialRoundedMTBold")
            //    bestScore.zPosition = 1
            //    bestScore.position = CGPoint(x: 0, y: gameTitle.position.y - 50)
            //    bestScore.fontSize = 40
            //    bestScore.text = "Best Score: \(UserDefaults.standard.integer(forKey: "bestScore"))"
            //    bestScore.fontColor = SKColor.white
            //    self.addChild(bestScore)
            //Create play button
            playButton = SKShapeNode()
            playButton.name = "play_button"
            playButton.zPosition = 2
            playButton.position = CGPoint(x: view.bounds.width/2, y: gameTitle.position.y - 100)
            playButton.fillColor = SKColor.cyan
            let topCorner = CGPoint(x: -50, y: 50)
            let bottomCorner = CGPoint(x: -50, y: -50)
            let middle = CGPoint(x: 50, y: 0)
            let path = CGMutablePath()
            path.addLine(to: topCorner)
            path.addLines(between: [topCorner, bottomCorner, middle])
            playButton.path = path
            
        }
        addChild(gameTitle)
        addChild(playButton)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = self.nodes(at: location)
            for node in touchedNode {
                if node.name == "play_button" {
                    startGame()
                }
            }
        }
    }
    func startGame() {
        let gameScene = GameScene(size: size)
        gameScene.scaleMode = scaleMode
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        view?.presentScene(gameScene, transition: reveal)
        print("should have presented menu")
        
    }
    
}
