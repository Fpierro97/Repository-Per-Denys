//
//  ProjectileGun.swift
//  Gioco2
//
//  Created by Francescomaria Pierro on 07/04/2020.
//  Copyright © 2020 Francescomaria Pierro. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class ProjectileGun{
    
    private let ProjectileDmg: CGFloat
    private let ratio: CGFloat
    private let dimCaricatore: CGFloat
    var gun: SKSpriteNode?
    var projectile: SKSpriteNode?
    
    init(PDmg: CGFloat, Ratio: CGFloat, DimCaricatore: CGFloat ) {
        ProjectileDmg = PDmg
        ratio = Ratio
        dimCaricatore = DimCaricatore
    }
    
    
    
    func shoot(direction: CGPoint){
      
        
        
       
    }
}
