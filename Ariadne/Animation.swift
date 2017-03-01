//
//  Animation.swift
//  Ariadne
//
//  Created by Christian Kling on 28/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit


class Animation : CustomStringConvertible {
    let timePerFrame : CGFloat = 0.04
    let key : String!
    let textures : [SKTexture]!
    let animation : SKAction!
    
    var description: String {
        return self.key
    }
    
    //TODO: alternate init with different spritesheets
    init(animation: SpriteAnimation) {
        self.key = animation.description
        
        let y = animation.rawValue
        textures = Array<SKTexture>()
        for x : Int in 0..<spriteAnimationCount[animation.rawValue]! {
            if 5..<9 ~= y {
                textures.append(Art.ariDaggerSheet.getTexture(column: x, row: y)!)
            } else {
                textures.append(Art.ariBowSheet.getTexture(column: x, row: y)!)
            }
        }
        
        self.animation = SKAction.animate(with: textures, timePerFrame: TimeInterval(timePerFrame))
    }
}
