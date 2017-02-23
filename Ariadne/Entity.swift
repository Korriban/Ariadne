//
//  Entity.swift
//  Ariadne
//
//  Created by Christian Kling on 19/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class Entity : SKSpriteNode {

    public static var animRow : Int = 0
    public var animation : Int = 0
    
    var sheet : SpriteSheet!
    

    
    override init(texture: SKTexture?, color: NSColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        self.animation = Entity.animRow
        Entity.animRow+=1
        if Entity.animRow > 20 {
            Entity.animRow = 0
        }
    }
    
    convenience init(sheet: SpriteSheet) {
        self.init(texture: sheet.getTexture(column: 0, row: 0), color: SKColor.white, size: (sheet.getTexture(column: 0, row: 0)?.size())!)
        self.sheet = sheet
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    public func update(deltaTime : TimeInterval) {
    }
}
