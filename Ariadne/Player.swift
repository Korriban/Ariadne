//
//  Player.swift
//  Ariadne
//
//  Created by Christian Kling on 12/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Player : Mob {
    let maxHealth : CFloat = 100.0
    var health : CFloat = 0.0
    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func update(deltaTime: TimeInterval) {
        if action(forKey: (Art.frames[animation]?.0)!) == nil {
            let walkingAction = SKAction.repeatForever(
                SKAction.animate(with: (Art.frames[animation]?.1)!,
                                 timePerFrame: 0.04,
                                 resize: false,
                                 restore: true))
            run(walkingAction, withKey:(Art.frames[animation]?.0)!)
        }
    }
}
