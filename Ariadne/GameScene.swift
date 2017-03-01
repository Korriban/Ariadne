//
//  GameScene.swift
//  Ariadne
//
//  Created by Christian Kling on 10/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var input : InputHandler!
    var player : Player!
    
    
    override func didMove(to view: SKView) {
        input = InputHandler(gameScene: self)
        player = Player(animationHandler: Art.playerAnimations, inputHandler: self.input)
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
        input.keyDown(with: event)
    }
    
    override func keyUp(with event: NSEvent) {
        input.keyUp(with: event)
    }
    
    override func update(_ currentTime: TimeInterval) {
        player.update(deltaTime: currentTime)
    }
}
