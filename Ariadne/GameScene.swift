//
//  GameScene.swift
//  Ariadne
//
//  Created by Christian Kling on 10/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var player : Player!
    
    
    override func didMove(to view: SKView) {
        Art.initFrames()
        let animSet : AnimationSet = AnimationSet()
        player = Player(animationSet: animSet)
        player.position = CGPoint(x: (view.scene?.size.width)! / 2, y: (view.scene?.size.height)! / 2)
        self.addChild(player)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 123:
            break //left
        case 124:
            break //right
        case 125: break //down
        case 126: break //up
        case 49: break  //space
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        player.update(deltaTime: currentTime)
    }
}
