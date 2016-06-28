//
//  SecondViewController.swift
//  extension
//
//  Created by ITユーザー on 2016/06/08.
//  Copyright © 2016年 小関千晴. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewWillDisappear(animated:Bool){
        let ap = UIApplication.sharedApplication().delegate as! AppDelegate
        
        if TextFieldRate.text == ""{
            
        }else{
        ap.rate=Double(TextFieldRate.text!)!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var TextFieldRate: UITextField!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
