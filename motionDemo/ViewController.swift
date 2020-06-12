//
//  ViewController.swift
//  motionDemo
//
//  Created by Anmol singh on 2020-06-12.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        
    }

    func setUpwallpaper(){
           let min = CGFloat(-100)
           let max = CGFloat(100)
           
           //MARK: - apply motion to horizontal axis
           let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
           xMotion.minimumRelativeValue = min
           xMotion.maximumRelativeValue = max
           
           //MARK: - apply motion to vertical axis
           let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
           yMotion.minimumRelativeValue = min
           yMotion.maximumRelativeValue = max
           
           let motionEffectGroup = UIMotionEffectGroup()
           motionEffectGroup.motionEffects = [xMotion, yMotion]
           
           imageView.addMotionEffect(motionEffectGroup)
           
       }


}

