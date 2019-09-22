//
//  SecondViewController.swift
//  Back to the Future
//
//  Created by Grant on 22/06/2016.
//  Copyright © 2016 Grant. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ButtonClicked(_ sender: AnyObject) {
        let utils = Utilities()
        let year = utils.GetRandomYear()
        
        lab1.text = utils.GetLetterAtIndex(str: year, location: 0)
        lab2.text = utils.GetLetterAtIndex(str: year, location: 1)
        lab3.text = utils.GetLetterAtIndex(str: year, location: 2)
        lab4.text = utils.GetLetterAtIndex(str: year, location: 3)
        
        AnimateItem(duration: 0.5, delay: 0, object: lab1)
        AnimateItem(duration: 0.5, delay: 0.2, object: lab2)
        AnimateItem(duration: 0.5, delay: 0.4, object: lab3)
        AnimateItem(duration: 0.5, delay: 0.6, object: lab4)
        
    }
    
    func AnimateItem (duration: Double, delay: Double, object: UIView) {
        
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
                object.center.x += self.view.bounds.width
        }) { (true) in
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

