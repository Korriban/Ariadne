//
//  Art.swift
//  Ariadne
//
//  Created by Christian Kling on 23/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

//static class for efficient resource reuse
class Art {
    static let rows : Int = 21
    static let columns : Int = 13
    static let spacing : Int = 1
    static let margin : Int = 0
    
    static let ariBowTexture : SKTexture = SKTexture(imageNamed: "ari_bow")
    static let ariDaggerTexture : SKTexture = SKTexture(imageNamed: "ari_dagger")
    
    public static let  ariBowSheet
        = SpriteSheet(texture: Art.ariBowTexture, rows: Art.rows, columns: Art.columns,
                      spacing: CGFloat(Art.spacing), margin: CGFloat(Art.margin))
    
    public static let ariDaggerSheet
        = SpriteSheet(texture: Art.ariDaggerTexture, rows: Art.rows, columns: Art.columns,
                      spacing: CGFloat(Art.spacing), margin: CGFloat(Art.margin))
    
    public static func spriteSize() -> CGSize {
        return ariBowSheet.frameSize
    }
    
    //yes, a dictionary with a string array tuple + enum key
    //call the police, I don't give a fuck :3
    static var frames : Dictionary<Int, (String, [SKTexture])> = [
        0:("death_frames", [SKTexture]()),
        1:("shoot_left_frames", [SKTexture]()),
        2:("shoot_down_frames", [SKTexture]()),
        3:("shoot_right_frames", [SKTexture]()),
        4:("shoot_up_frames", [SKTexture]()),
        5:("hit_left_frames", [SKTexture]()),
        6:("hit_down_frames", [SKTexture]()),
        7:("hit_right_frames", [SKTexture]()),
        8:("hit_up_frames", [SKTexture]()),
        9:("walk_left_frames", [SKTexture]()),
        10:("walk_down_frames", [SKTexture]()),
        11:("walk_right_frames", [SKTexture]()),
        12:("walk_up_frames", [SKTexture]()),
        13:("push_left_frames", [SKTexture]()),
        14:("push_down_frames", [SKTexture]()),
        15:("push_right_frames", [SKTexture]()),
        16:("push_up_frames", [SKTexture]()),
        17:("cast_left_frames", [SKTexture]()),
        18:("cast_down_frames", [SKTexture]()),
        19:("cast_right_frames", [SKTexture]()),
        20:("cast_up_frames", [SKTexture]())
    ]
    
    static func initFrames() {
        for y : Int in 0..<frames.count {
            for x : Int in 0..<spriteAnimationCount[y]! {
                if 5..<9 ~= y {
                    frames[y]?.1.append(Art.ariDaggerSheet.getTexture(column: x, row: y)!)
                } else {
                    frames[y]?.1.append(Art.ariBowSheet.getTexture(column: x, row: y)!)
                }
            }
        }
    }

}