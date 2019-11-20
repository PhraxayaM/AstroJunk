//
//  shipClass.swift
//  spriteTest
//
//  Created by MattHew Phraxayavong on 10/30/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class shipClass: SKSpriteNode {

    init() {
        let texture = SKTexture(imageNamed: "ship")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

  
    
}
