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
    
    public static let playerAnimations = AnimationHandler()
}
