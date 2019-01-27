//
//  DancingGround.swift
//  Slide
//
//  Created by kemo Jallow on 6/11/17.
//  Copyright © 2017 kemo Jallow. All rights reserved.
//

import SpriteKit

class DancingGround{
    
    var enemySprites: [SKSpriteNode] = []
    let removeNode = SKAction.removeFromParent()
    
    func random()-> Int{
        let randomNum:UInt32 = arc4random_uniform(2) // range is 0 to 99
        
        // convert the UInt32 to some other  types
        
        let _:TimeInterval = TimeInterval(randomNum)
        
        let someInt:Int = Int(randomNum)
        
        let _:String = String(randomNum) //string works too
        return someInt
    }
    func randRange (lower: Int , upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
    
    func randFloat(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
    func spawnEnemy(x: CGFloat, y: CGFloat) -> SKSpriteNode {
        
        
        // create a new enemy sprite
        let node = SKSpriteNode(color: UIColor.black, size: CGSize(width: 5, height: 128))
        enemySprites.append(node)
       //let posY  = CGFloat(y  - node.size
       //.height)
        node.position  = CGPoint(x: x, y: y)
        node.anchorPoint  = CGPoint(x:0,y:1)
        return node
        
    }
    

    
}
