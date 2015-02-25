//
//  ViewController.swift
//  99-Red-Balloons-Struct-Challenge
//
//  Created by Arnab Sinha on 2/24/15.
//  Copyright (c) 2015 Arnab Sinha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImage: UIImageView!
    
    @IBOutlet weak var balloonNumber: UILabel!
    
    var balloonList:[Balloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        balloonImage.image = UIImage(named:"BerlinTVTower.jpg")
        create99Balloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonNextPressed(sender: UIBarButtonItem) {
        var randomAccess = Int(arc4random_uniform(UInt32(balloonList.count)))
        balloonImage.image = balloonList[randomAccess].myImage
        balloonNumber.text = "\(balloonList[randomAccess].myNumber)"
        self.balloonNumber.hidden = false
    }

    func create99Balloons(){
        //Create 99 balloons, assign a number and image randomly and store in array
        for var i = 0; i<100; i++ {
            var balloon:Balloon = Balloon()
            
            var x = Int(arc4random_uniform(UInt32(4)))
            
            switch x {
            case 1:
                balloon.myImage = UIImage(named: "RedBalloon2.jpg")
            case 2:
                balloon.myImage = UIImage(named: "RedBalloon3.jpg")
            case 3:
                balloon.myImage = UIImage(named: "RedBalloon4.jpg")
            default:
                balloon.myImage = UIImage(named: "RedBalloon1.jpg")
            }
            balloon.myNumber = i;
            balloonList.append(balloon)
        }
    }
}

