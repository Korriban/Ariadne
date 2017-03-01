//
//  Player.swift
//  Ariadne
//
//  Created by Christian Kling on 12/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Player : Mob {
    let maxHealth : CGFloat = 100.0
    var health : CGFloat = 0.0
    var movementSpeed : CGFloat = 0.0001
    var phi : CGFloat = 0.0
    var dir : SpriteAnimation = SpriteAnimation.WalkDown
    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func update(deltaTime: TimeInterval) {
        processInput()
        animate()
        move(deltaTime: deltaTime)
    }
    
    func processInput() {
        if input.up {
            ya = 1.0
        } else if input.down {
            ya = -1.0
        }
        
        if input.left {
            xa = -1.0
        } else if input.right {
            xa = 1.0
        }
    }
    
    //TODO: smooth stepping
    func animate() {
        let anim : Animation = self.animationHandler.get(animation: dir)!
        
        if (xa != 0 || ya != 0)  {
            phi = atan2(ya, xa)
            if phi <= CGFloat.pi && phi > CGFloat.pi / 2 {
                dir = SpriteAnimation.WalkLeft
            } else if phi <= CGFloat.pi / 2 && phi > 0 {
                dir = SpriteAnimation.WalkUp
            } else if phi <= 0 && phi > -CGFloat.pi / 2 {
                dir = SpriteAnimation.WalkRight
            } else {
                dir = SpriteAnimation.WalkDown
            }
            
            
            if action(forKey: anim.key) == nil {
                let walkingAction = SKAction.repeat(
                    SKAction.animate(with: anim.textures,
                                     timePerFrame: TimeInterval(anim.timePerFrame),
                                     resize: false,
                                     restore: true), count: 1)
                
                run(walkingAction, withKey:anim.key)
            }
        } else {
            self.texture = anim.textures[0]
        }
    }
    
    //TODO: complicate!
    func move(deltaTime: TimeInterval) {
        let dd : CGFloat = sqrt(xa*xa+ya*ya) + 1
        self.position.x += CGFloat((xa / dd) * movementSpeed * CGFloat(deltaTime))
        self.position.y += CGFloat((ya / dd) * movementSpeed * CGFloat(deltaTime))
        xa = 0
        ya = 0
    }
}
