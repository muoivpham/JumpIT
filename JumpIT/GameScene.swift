//
//  GameScene.swift
//  JumpIT
//
//  Created by muoivpham on 6/27/18.
//  Copyright © 2018 muoivpham. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var sky: EndlessBackground!
    var forest: EndlessBackground!
    var ground: EndlessBackground!
    var girl: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        sky = EndlessBackground(parent: self, sprite: self.childNode(withName: "sky") as! SKSpriteNode, speed: 1)
        forest = EndlessBackground(parent: self, sprite: self.childNode(withName: "forest") as! SKSpriteNode, speed: 3)
        ground = EndlessBackground(parent: self, sprite: self.childNode(withName: "ground") as! SKSpriteNode, speed: 6)
        girl = self.childNode(withName: "girl") as! SKSpriteNode!
    }
    
    override func update(_ currentTime: TimeInterval){
        sky.update()
        forest.update()
        ground.update()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if girl.physicsBody?.velocity.dy == 0 {
            girl.physicsBody? .applyImpulse(CGVector(dx: 0, dy: 120))
        }
    }
}
