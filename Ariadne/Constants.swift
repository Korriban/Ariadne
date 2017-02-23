//
//  Constants.swift
//  Ariadne
//
//  Created by Christian Kling on 20/02/2017.
//  Copyright © 2017 Fennheim. All rights reserved.
//

import SpriteKit

let PlayerCategory   : UInt32 = 0x1 << 1
let EnemyCategory    : UInt32 = 0x1 << 2
let ArrowCategory    : UInt32 = 0x1 << 3
let ParticleCategory : UInt32 = 0x1 << 4
let WorldCategory    : UInt32 = 0x1 << 5


//hard coded for now
let spriteAnimationCount : Dictionary<Int, Int> = [
    0:6,1:13,2:13,3:13,4:13,5:6,6:6,7:6,8:6,9:9,10:9,11:9,12:9,13:8,14:8,15:8,16:8,17:7,18:7,19:7,20:7
]
