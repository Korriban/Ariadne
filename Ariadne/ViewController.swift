//
//  ViewController.swift
//  Ariadne
//
//  Created by Christian Kling on 10/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sceneNode = GameScene(size: self.view.frame.size)
        self.view.window?.makeMain()
        if let view = self.skView {
            // Set the scale mode to scale to fit the window
            sceneNode.scaleMode = .aspectFill
                
            // Present the scene
            view.presentScene(sceneNode)
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

