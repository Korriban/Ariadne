//
//  Entity.swift
//  Ariadne
//
//  Created by Christian Kling on 19/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Entity : SKSpriteNode {
    private let rows : Int = 25
    private let columns : Int = 13
    
    var sheet : SpriteSheet?
    
    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        sheet = SpriteSheet(texture: texture!, rows: self.rows, columns: self.columns)
        super.init(texture: texture, color: color, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
