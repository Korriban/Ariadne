//
//  AnimationHandler.swift
//  Ariadne
//
//  Created by Christian Kling on 01/03/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

/*
 *   Not sure if overkill
 */

enum SpriteAnimation: Int, CustomStringConvertible {
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
    
    var description: String {
        switch self {
        case .Death:
            return "death"
        case .ShootLeft:
            return "shootLeft"
        case .ShootDown:
            return "shootDown"
        case .ShootRight:
            return "shootRight"
        case .ShootUp:
            return "shootUp"
        case .HitLeft:
            return "hitLeft"
        case .HitDown:
            return "hitDown"
        case .HitRight:
            return "hitRight"
        case .HitUp:
            return "hitUp"
        case .WalkLeft:
            return "walkLeft"
        case .WalkDown:
            return "walkDown"
        case .WalkRight:
            return "walkRight"
        case .WalkUp:
            return "walkUp"
        case .PushLeft:
            return "pushLeft"
        case .PushDown:
            return "pushDown"
        case .PushRight:
            return "pushRight"
        case .PushUp:
            return "pushUp"
        case .CastLeft:
            return "castLeft"
        case .CastDown:
            return "castDown"
        case .CastRight:
            return "castRight"
        case .CastUp:
            return "castUp"
        }
    }
}


class AnimationHandler {
    var animationSet = Dictionary<SpriteAnimation, Animation>()

    init() {
        for index in 0..<Art.rows {
            let animIndex = SpriteAnimation(rawValue: index)!
            animationSet[animIndex] = Animation(animation: animIndex)
        }
    }
    
    //pretty much useless for now
    func play(entity: Entity, animation : SpriteAnimation, completion: @escaping ()->()) {
        entity.run((animationSet[animation]?.animation)!, completion: {})
        entity.run(SKAction.wait(forDuration: 0.04), completion: completion)
    }
    
    func get(action: SpriteAnimation) -> SKAction? {
        return animationSet[action]?.animation
    }
    
    func get(animation: SpriteAnimation) -> Animation? {
        return animationSet[animation]
    }
}
