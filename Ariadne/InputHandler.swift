//
//  InputHandler.swift
//  Ariadne
//
//  Created by Christian Kling on 01/03/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

//TODO: mouse / touch handling
class InputHandler {
    let gameScene : GameScene!
    
    var up : Bool = false
    var down : Bool = false
    var right : Bool = false
    var left : Bool = false
    var space : Bool = false
    
    
    init(gameScene: GameScene) {
        self.gameScene = gameScene
    }
    
    func keyDown (with event: NSEvent) {
        toggle(keyCode: event.keyCode, keyDown: true)
    }
    
    func keyUp (with event: NSEvent) {
        toggle(keyCode: event.keyCode, keyDown: false)
    }
    
    //key codes: http://boredzo.org/blog/archives/2007-05-22/virtual-key-codes
    func toggle (keyCode : UInt16, keyDown: Bool) {
        switch keyCode {
        case 123:
            left = keyDown
            break
        case 124:
            right = keyDown
            break
        case 125:
            down = keyDown
            break
        case 126:
            up = keyDown
            break
        case 49:
            space = keyDown
            break
        default:
            print("keyCode pressed: \(keyCode)")
        }
    }
}
