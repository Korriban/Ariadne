//
//  Entity.swift
//  Ariadne
//
//  Created by Christian Kling on 19/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Entity : SKSpriteNode {
    var animationHandler : AnimationHandler!
    var input : InputHandler!
    
    //acceleration
    var xa : CGFloat = 0.0
    var ya : CGFloat = 0.0

    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    convenience init(animationHandler: AnimationHandler, inputHandler : InputHandler) {
        self.init(texture: nil, color: SKColor.white, size: Art.spriteSize())
        self.input = inputHandler
        self.animationHandler = animationHandler;
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    public func update(deltaTime : TimeInterval) {
    }
}
