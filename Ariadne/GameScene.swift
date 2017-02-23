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
    var players = [Player]()
    
    
    override func didMove(to view: SKView) {
        Art.initFrames()
        var player : Player
        for y in 0..<Int(view.frame.size.height / 64) {
            for x in 0..<Int(view.frame.size.width / 32) {
                player = Player(sheet: Art.ariBowSheet)
                player.position = CGPoint(x: x*32+16, y: Int(view.frame.size.height)-64*y-32)
                self.addChild(player)
                players.append(player)
            }
        }
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
            self.childNode(withName: "player")?.position.x.subtract(1)
            break //left
        case 124: break //right
        case 125: break //down
        case 126: break //up
        case 49: break  //space
        default:
            print("keyDown: \(event.characters!) keyCode: \(event.keyCode)")
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        for player in players {
            player.update(deltaTime: currentTime)
        }
    }
}
