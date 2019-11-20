//
//  GameViewController.swift
//  spriteTest
//
//  Created by MattHew Phraxayavong on 10/23/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
//    let blueNode = SKSpriteNode()
//    let redNode = SKSpriteNode()
//    override init(size:CGSize) {
//        super.init(size:size)
//        start()
//    }
    override func viewDidLoad() {
          super.viewDidLoad()

          view = SKView(frame: view.bounds)

          if let view = self.view as! SKView? {
//              let scene = GameScene(size: view.bounds.size)
            let scene = MenuScene(size: view.bounds.size)
            let backgroundImage = SKSpriteNode(imageNamed: "vectorstock_16606572")
//            let shipImage = SKSpriteNode(imageNamed: "ship")

              // Set the scale mode to scale to fit the window
              scene.scaleMode = .aspectFill
            backgroundImage.zPosition = -1
//            scene.addChild(backgroundImage)
            
//            shipImage.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY -  400)
//            scene.addChild(shipImage)
              // Present the scene
              view.presentScene(scene)

              // Scene properties
              view.showsPhysics = false
              view.ignoresSiblingOrder = true
              view.showsFPS = true
              view.showsNodeCount = true
          }
      }
    
    
//    var spaceship = SKSpriteNode()
//    var
//    let backgroundImage = SKSpriteNode(imageNamed: "vectorstock_16606572")
//    let shipImage = SKSpriteNode(imageNamed: "playerShip2_red")
//    let asteroidImage = SKSpriteNode(imageNamed: "meteorBrown_big3")
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//        if let view = self.view as! SKView? {
//            // Load the SKScene from 'GameScene.sks'
//            if let scene = SKScene(fileNamed: "GameScene") {
//////                let myCoolSprite  = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 64, height: 64))
////                let myCoolSprite = SKSpriteNode(imageNamed: "playerShip2_red")
////                // Set the scale mode to scale to fit the window
////                let background = SKSpriteNode(imageNamed: "vectorstock_16606572")
////                let asteroidSprite = SKSpriteNode(imageNamed: "meteorBrown_big3")
//
////                let randomPosition: Int = arc4random()
//
////                background.size = frame.size
////                background.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY)
////                scene.addChild(backgroundImage)
//                backgroundImage.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY)
//                backgroundImage.zPosition = -1
//
//                scene.scaleMode = .aspectFill
//
////                asteroidSprite.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY)
////                scene.addChild(asteroidSprite)
//                asteroidImage.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY)
//                scene.addChild(asteroidImage)
//
//                //ship sprite
////                myCoolSprite.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY - 400)
////                scene.addChild(myCoolSprite)
//
//                shipImage.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY - 400)
//                scene.addChild(shipImage)
//                scene.addChild(backgroundImage)
//
//                // Present the scene
//                view.presentScene(scene)
//            }
//
//            view.ignoresSiblingOrder = true
//
//            view.showsFPS = true
//            view.showsNodeCount = true
//        }
//    }
    

    
//    func spawnAsteroid() {
//        let waitAction = SKAction.wait(forDuration: 2)
//        let createAsteroids = asteroidImage
//        if bool.random() {
//            let item = createAsteroids
//
//        }
//
//    }
    
    
    //            let randomPositionX = random(Int(view.bounds.width))
    //            let positionX = CGFloat(randomPositionX)
    //            square.position.x = positionX //view.bounds.width/2
    //    //        square.position.y = view.bounds.height/2
    //    //        square2.position.x = view.bounds.width/2 + 70
    //    //        square2.position.y = view.bounds.height/2
    //    //        square3.position.x = view.bounds.width/2 - 70
    //    //        square3.position.y = view.bounds.height/2
    
    
//    func createSquare(){
//            let size = CGSize(width: 60, height: 60)
//            let square = SKSpriteNode(texture: nil, color: .gray, size: size)
//    //        let square = TouchSprite(texture: nil, color: .gray, size: size)
//            //square.isUserInteractionEnabled = true
//            square.name = "box"
//            let moveNodeUp = SKAction.moveBy(x: 0.0, y: self.size.height, duration: 10.0)
//    //        let moveNodeRight = SKAction.moveBy(x: 100.0, y: 0.0, duration: 1.0)
//    //        let moveNodeDown = SKAction.moveBy(x: 0.0, y: -100.0, duration: 1.0)
//    //        let moveNodeLeft = SKAction.moveBy(x: -100.0, y: 0.0, duration: 1.0)
//    //        let repi = SKAction.repeatForever(moveNodeUp)
//            let delete = SKAction.removeFromParent()
//            let seq = SKAction.sequence([moveNodeUp, delete])
//    //        let seq = SKAction.sequence([moveNodeUp])
//            square.run(seq)
//
//            let appear = SKAction.fadeIn(withDuration: 2.0)
//            let disappear = SKAction.fadeOut(withDuration: 2.0)
//            let seq2 = SKAction.sequence([disappear, appear])
//            let repe = SKAction.repeatForever(seq2)
//    //        square.run(repe)
//
//            let mDown = SKAction.moveBy(x: 0.0, y: -100.0, duration: 1.0)
//            let scaleUp = SKAction.scale(by: 1.5, duration: 1)
//            let stop = SKAction.stop()
//            let mUp = SKAction.moveBy(x: 0.0, y: 100.0, duration: 1.0)
//            let scaleDown = SKAction.scale(by: -1.5, duration: 1)
//            let group = SKAction.group([mDown, scaleUp, stop, mUp, scaleDown])
//            let repa = SKAction.repeatForever(group)
//    //            square.run(repa)
//
//
//    //        let seq = SKAction.fadeIn(withDuration: 2)
//    //        let seq2 = SKAction.move(to: CGPoint(x: 0, y: 50), duration: 2)
//    //
//    //        let square2 = SKSpriteNode(texture: nil, color: .blue, size: size)
//    //        let square3 = SKSpriteNode(texture: nil, color: .brown, size: size)
//    //        if let view = self.view{
//    //              square.position.x = view.bounds.width/2
//            guard let view = self.view else {
//                return
//            }
//            let randomPositionX = random(Int(view.bounds.width))
//            let positionX = CGFloat(randomPositionX)
//            square.position.x = positionX //view.bounds.width/2
//    //        square.position.y = view.bounds.height/2
//    //        square2.position.x = view.bounds.width/2 + 70
//    //        square2.position.y = view.bounds.height/2
//    //        square3.position.x = view.bounds.width/2 - 70
//    //        square3.position.y = view.bounds.height/2
//
//            addChild(square)
//    //        addChild(square2)
//    //        addChild(square3)
//        }
//    func createSpaceship() -> Void {
//        spaceship = SKSpriteNode()
//        spaceship.texture = SKTexture(imageNamed: "playerShip2_red")
//        spaceship.size = CGSize(width: 70, height: 100)
//        spaceship.setScale(1.0)
//
////        spaceship.position = CGPoint(x: screenSize.width / 3, y: screenSize.height - 75)
//        spaceship.position = CGPoint(x: view.widthAnchor / 3, y: view.heightAnchor - 75)
//        spaceship.zPosition = 1
//
//        self.addChild(spaceship)
//    }
    
    
//    let spaceImage: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "playerShip2_red")
//
//        return imageView
//
//    }()
    

    
//    let testMove = SKAction.moveBy(x: 100, y: 0, duration: 4)
    
   
    
    
    
//    let backgroundImage: SKSpriteNode = {
//        let imageView = SKSpriteNode(imageNamed: "vectorstock_16606572")
//
////        imageView.texture = SKTexture(imageNamed: "vectorstock_16606572")
////        imageView.anchorPoint.x = 40
////        imageView.zPosition = 40
//        return imageView
//    }()
    
//    let testLabel: UILabel = {
//        let label = UILabel()
//        label.text = "testing"
//        label.textColor = .red
//
////        label.translatesAutoresizingMaskIntoConstraints = false
////        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//
//        return label
//
//    }()
//
//    func leftTapped(){
//
//    }
    
//    func moveShip (moveBy: CGFloat, forTheKey: String) {
//        let moveAction = SKAction.moveBy(x: moveBy, y: 0, duration: 1)
//        let repeatForEver = SKAction.repeatForever(moveAction)
//        let seq = SKAction.sequence([moveAction, repeatForEver])
//
//        //run the action on your ship
//        player.run(seq, withKey: forTheKey)
//    }
//

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
