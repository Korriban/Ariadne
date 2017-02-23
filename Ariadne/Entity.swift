//
//  Entity.swift
//  Ariadne
//
//  Created by Christian Kling on 19/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Entity : SKSpriteNode {
    var animationSet : AnimationSet!

    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init(animationSet: AnimationSet) {
        self.init(texture: nil, color: SKColor.white, size: Art.spriteSize())
        self.animationSet = animationSet
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    public func update(deltaTime : TimeInterval) {
    }
}
