//
//  Mob.swift
//  Ariadne
//
//  Created by Christian Kling on 21/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Mob : Entity {
    struct animations {
        
    }
    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
