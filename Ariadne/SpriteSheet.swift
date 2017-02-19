//
//  SpriteSheet.swift
//  Ariadne
//
//  Created by Christian Kling on 12/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class SpriteSheet {
    let texture: SKTexture!
    let rows: Int
    let columns: Int
    var margin: CGFloat=0
    var spacing: CGFloat=0
    var frameSize: CGSize{
        let tSize: CGSize=self.texture.size()
        let ww: CGFloat=tSize.width-(self.margin*2+self.spacing*CGFloat(self.columns-1))
        let hh: CGFloat=tSize.height-(self.margin*2+self.spacing*CGFloat(self.rows-1))
        return CGSize(width: ww / CGFloat(self.columns), height: hh / CGFloat(self.rows))
    }
    
    init(texture: SKTexture, rows: Int, columns: Int, spacing: CGFloat, margin: CGFloat) {
        self.texture = texture
        self.rows = rows
        self.columns = columns
        self.margin = margin
        self.spacing = spacing
    }
    
    convenience init(texture: SKTexture, rows: Int, columns: Int) {
        self.init(texture: texture, rows: rows, columns: columns, spacing: 0, margin: 0)
    }
    
    func getTextureAt(column: Int, row: Int)->SKTexture? {
        if !(0...self.rows ~= row && 0...self.columns ~= column) {
            //out of bounds
            return nil
        }
        let xp: CGFloat=self.margin+CGFloat(column)*(self.frameSize.width+self.spacing)-self.spacing
        let yp: CGFloat=self.margin+CGFloat(row)*(self.frameSize.height+self.spacing)-self.spacing
        var textureRect=CGRect(x: xp, y: yp, width: self.frameSize.width, height: self.frameSize.height)
        
        //center self
        textureRect=CGRect(x: textureRect.origin.x / self.texture.size().width,
                           y: textureRect.origin.y / self.texture.size().height,
                           width: textureRect.size.width / self.texture.size().width,
                           height: textureRect.size.height / self.texture.size().height)
        return SKTexture(rect: textureRect, in: self.texture)
    }
}
