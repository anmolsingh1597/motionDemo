//
//  motionViewController.swift
//  motionDemo
//
//  Created by Anmol singh on 2020-06-12.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit
import CoreMotion

class motionViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    // we need to add motion manager
    var motionManager: CMMotionManager!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main){
            (data, error) in
        
            guard let acclerometerData = data else {return}
//            print(acclerometerData)
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 1
            formatter.maximumFractionDigits = 2
            
            let x = formatter.string(for: acclerometerData.acceleration.x)!
            let y = formatter.string(for: acclerometerData.acceleration.y)!
             let z = formatter.string(for: acclerometerData.acceleration.z)!
            
            print(x , y , z)
            
            self.xLabel.text = "X: \(x)"
            self.yLabel.text = "Y: \(y)"
            self.zLabel.text = "Z: \(z)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
