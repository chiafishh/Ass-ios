//
//  TopViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/21.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

 
    
    @IBAction func call1(_ sender: UIButton) {
        Call1(VCc:self)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    

    
}


func Call1(VCc:UIViewController){
    makePhoneCall(ViewController:VCc,phoneNumber: "+886981839228")
}

func makePhoneCall(ViewController:UIViewController,phoneNumber: String) {
    if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {
        let alert = UIAlertController(title: ("撥打電話"), message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "撥打", style: .default, handler: { (action) in
            UIApplication.shared.open(phoneURL as URL)
        }))
        
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        
        ViewController.present(alert, animated: true, completion: nil)
    }
}


