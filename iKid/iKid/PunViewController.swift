//
//  PunViewController.swift
//  iKid
//
//  Created by MAIN on 11.02.16.
//  Copyright © 2016 University of Washington. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var punView: UIView!
    
    @IBOutlet weak var jokeText: UITextView!
    let jokes: [String] = ["What did the pirate say when he turned 80.", "Aye Matey"]
    var iter: Int = 0
    
    @IBAction func jokeFlip(_ sender: Any) {
        iter += 1
        
        UIView.transition(with: punView, duration: 0.4, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
            self.jokeText.text =  self.jokes[self.iter % self.jokes.count]
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jokeText.text = jokes[iter % jokes.count]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
