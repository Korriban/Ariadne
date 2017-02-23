//
//  Animation.swift
//  Ariadne
//
//  Created by Christian Kling on 23/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

//Bottom to Top!
enum SpriteAnimation: Int {
    case Death = 0
    case ShootRight
    case ShootDown
    case ShootLeft
    case ShootUp
    case HitRight
    case HitDown
    case HitLeft
    case HitUp
    case WalkRight
    case WalkDown
    case WalkLeft
    case WalkUp
    case PushRight
    case PushDown
    case PushLeft
    case PushUp
    case CastRight
    case CastDown
    case CastLeft
    case CastUp
}


class AnimationSet {
    let timePerFrame : CGFloat = 0.04

    //TODO:
    func runAction(animation: SpriteAnimation) ->SKAction? {
        return SKAction.repeat(
            SKAction.animate(with: (Art.frames[animation.rawValue]?.1)!, timePerFrame: TimeInterval(timePerFrame), resize: false, restore: true), count: 1)
    }
}
