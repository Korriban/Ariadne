//
//  Sprite.swift
//  Ariadne
//
//  Created by Christian Kling on 12/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Sprite {
    var x, y, z: CFloat
    var removed: Bool = false
    let sheet: SpriteSheet
    
    init(x: CFloat, y: CFloat, z: CFloat, sheet: SpriteSheet) {
        self.x = x
        self.y = y
        self.z = z
        self.sheet = sheet
    }
}
