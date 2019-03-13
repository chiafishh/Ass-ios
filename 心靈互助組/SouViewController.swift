//
//  SouViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/21.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class SouViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    


    @IBAction func call1(_ sender: Any) {
        Call1(VCc:self)
    }
    
    @IBAction func call2(_ sender: Any) {//三軍
        makePhoneCall(ViewController:self,phoneNumber: "+886228959808")
    }
    
    @IBAction func call3(_ sender: Any) {//國北
        makePhoneCall(ViewController:self,phoneNumber: "+88634992295")
    }
    @IBAction func call4(_ sender: Any) {//國中
        makePhoneCall(ViewController:self,phoneNumber: "+886423939081")
    }
    @IBAction func call5(_ sender: Any) {//國南
        makePhoneCall(ViewController:self,phoneNumber: "+88677499742")
    }
    @IBAction func call6(_ sender: Any) {//國東
        makePhoneCall(ViewController:self,phoneNumber: "+88638263258")
    }
    @IBAction func call7(_ sender: Any) {//1995
        makePhoneCall(ViewController:self,phoneNumber: "1995")
    }
    @IBAction func call8(_ sender: Any) {//張老師
        makePhoneCall(ViewController:self,phoneNumber: "1980")
    }
    
}

