//
//  GameScene.swift
//  Gioco2
//
//  Created by Francescomaria Pierro on 31/03/2020.
//  Copyright © 2020 Francescomaria Pierro. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var player : MainCharacter!
    var playerSize = CGSize(width:  50, height: 50)
    var gun: ProjectileGun!
    
    let moveJoystick = TLAnalogJoystick(withDiameter: 50)
    let shotJoystick = TLAnalogJoystick(withDiameter: 70)
    
//    MARK: Start Stuff
    
    override func didMove(to view: SKView) {

        //MARK: Setup
        
        
        joystickManager()
        PlayerExist()
    
        
        view.isMultipleTouchEnabled = true

    }
    
//    MARK: Preparation Zone
    
    func joystickManager(){
        var image = UIImage(named: "jStick")
        moveJoystick.handleImage = image
        image = UIImage(named: "jSubstrate")
        moveJoystick.baseImage = image
        let moveJoystickHiddenArea = TLAnalogJoystickHiddenArea(rect: CGRect(x: camera!.frame.width / 2, y: camera!.frame.height / 2, width: -frame.width/2, height: -frame.height))
        moveJoystickHiddenArea.strokeColor = UIColor.black.withAlphaComponent(0)
        moveJoystickHiddenArea.joystick = moveJoystick
        moveJoystick.isMoveable = true
        camera!.addChild(moveJoystickHiddenArea)
        var image2 = UIImage(named: "jStick")
        shotJoystick.handleImage = image2
        image2 = UIImage(named: "jSubstate")
        shotJoystick.baseImage = image2
        let shotJoystickHiddenArea = TLAnalogJoystickHiddenArea(rect: CGRect(x: -camera!.frame.width/2 , y:camera!.frame.height/2, width: frame.width/2, height: -frame.height))
        shotJoystickHiddenArea.strokeColor = UIColor.black.withAlphaComponent(0)
        shotJoystickHiddenArea.joystick = shotJoystick
        shotJoystick.isMoveable=true
        camera!.addChild(shotJoystickHiddenArea)
        
        moveJoystick.on(.move) { [unowned self] joystick in
            self.player.Move(direction: joystick.velocity)
            print("moving")
            }
        shotJoystick.on(.move) { [unowned self] joystick2 in
            self.gun.shoot()(direction: joystick2.velocity)
            print("Shooting")
            
        }

            
        
            

        }
        
    
    
    
    func PlayerExist() {
        if let characterNode = childNode(withName: "Player") as! SKSpriteNode?{
            player = MainCharacter(cNode: characterNode)
        }
    }
    


}
