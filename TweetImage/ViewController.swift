//
//  ViewController.swift
//  TweetImage
//
//  Created by KentarOu on 2015/12/23.
//  Copyright © 2015年 KentarOu. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    @IBOutlet weak var tweetTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressTwitter(sender: AnyObject) {
        
        let twitterPostView: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        
        let twweetString:String = "Tweet Message" + "\n" + tweetTextField.text!
        twitterPostView.setInitialText(twweetString)
        
        // 添付したい写真を設定
        let sendImage = UIImage(named: "iphone")
    
        twitterPostView.addImage(sendImage)
        self.presentViewController(twitterPostView, animated: true, completion: nil)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
}

