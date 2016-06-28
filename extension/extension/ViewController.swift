//
//  ViewController.swift
//  extension
//
//  Created by ITユーザー on 2016/06/08.
//  Copyright © 2016年 小関千晴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var en:Double=0
    var dol:Double=0
    var rate:Double=0
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    @IBOutlet weak var TextField: UITextField!
    @IBAction func TextField(sender: AnyObject) {
        
        
        if TextField.text == ""{
            TextField2.text="0"
        }else{
        en=Double(TextField.text!)!
        dol=en*rate
        TextField2.text="\(dol)"
        }
    }


    @IBOutlet weak var TextField2: UITextField!
    @IBAction func TextField2(sender: AnyObject) {
        
        if TextField2.text == ""{
            TextField.text="0"
        }else{
            dol=Double(TextField2.text!)!
            en=dol/rate
            TextField.text=String(format:"%.0.1f",Float(en))
        }
    }
    
    @IBOutlet weak var button: UIButton!
    
    override func viewWillAppear(animated:Bool){
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
        rate=ap.rate!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

