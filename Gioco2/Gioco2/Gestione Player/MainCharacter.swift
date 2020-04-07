//
//  MainCharacter.swift
//  Gioco2
//
//  Created by Francescomaria Pierro on 01/04/2020.
//  Copyright © 2020 Francescomaria Pierro. All rights reserved.
//

import SpriteKit
import GameplayKit
import Foundation



class MainCharacter{
     
    // MARK: Variabili Player
    private var FullHp: Float = 100
    private var actualHp: Float
    var player: SKSpriteNode
    
    // MARK: PlayerCharacter
   private let playerSpeed = CGFloat(0.12)
    
    // MARK: Movement Related
    
    private var isLeft: Bool = false
    private var isUp: Bool = false
    private var isMoving: Bool = false
    
    //MARK: Player Initializer
    
    init(cNode: SKSpriteNode){
        player = cNode
        player.scene?.scaleMode = .aspectFill
        actualHp = FullHp
        playerPhysics()
        
        
    }
    
    func playerPhysics(){
        let tempPhysidBody = SKPhysicsBody(rectangleOf: CGSize(width: (player.size.width / 2), height: player.size.height ))
        tempPhysidBody.pinned = false
        tempPhysidBody.affectedByGravity = false
        tempPhysidBody.allowsRotation = false
        tempPhysidBody.isDynamic = true
        tempPhysidBody.categoryBitMask = UInt32(1)
        tempPhysidBody.mass = 0.298474079370499
        
        player.physicsBody = tempPhysidBody
    }

    func Move(direction: CGPoint){
       
        player.position.x += playerSpeed * direction.x
        player.position.y += playerSpeed * direction.y
    }
    
    
}
