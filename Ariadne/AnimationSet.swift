//
//  Animation.swift
//  Ariadne
//
//  Created by Christian Kling on 23/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

//TODO:
enum SpriteAnimation: Int {
    case Death = 0
    case ShootLeft
    case ShootDown
    case ShootRight
    case ShootUp
    case HitLeft
    case HitDown
    case HitRight
    case HitUp
    case WalkLeft
    case WalkDown
    case WalkRight
    case WalkUp
    case PushLeft
    case PushDown
    case PushRight
    case PushUp
    case CastLeft
    case CastDown
    case CastRight
    case CastUp
}


class AnimationSet {
    let timePerFrame : CGFloat = 0.04
    
 

    
    
    func runAction(animation: SpriteAnimation) ->SKAction? {
        return SKAction.repeat(
            SKAction.animate(with: (Art.frames[animation.rawValue]?.1)!, timePerFrame: TimeInterval(timePerFrame), resize: false, restore: true), count: 1)
        }
}
