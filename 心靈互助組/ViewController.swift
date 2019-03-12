//
//  ViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/20.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var en = 0
    var alerttext = "1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func e1Clicked(_ sender: Any) {
        en = 1
        alert0()
    }
    @IBAction func e2Clicked(_ sender: Any) {
        en = 2
        alert0()
    }
    @IBAction func e3Clicked(_ sender: Any) {
        en = 3
        alert0()
    }
    @IBAction func e4Clicked(_ sender: Any) {
        en = 4
        alert0()
    }
    @IBAction func e5Clicked(_ sender: Any) {
        en = 5
        alert0()
    }
    
    func alert0() {
        switch en {
        case 1:
            alerttext = "您現在心情是普通,\n建議參訪相關資源!"
        case 2:
            alerttext = "您現在心情是超開心,\n建議參訪相關資源!"
        case 3:
            alerttext = "您現在心情是還不錯,\n建議參訪相關資源!"
        case 4:
            alerttext = "您現在心情是不太開心,\n建議作心情溫度計(BSRS-5)自我評量!"
        case 5:
            alerttext = "您現在心情是難過,\n建議作心情溫度計(BSRS-5)自我評量!"
        default: break
        }
        let alert = UIAlertController(title: (alerttext), message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "同意", style: .default, handler: { (action) in
            if self.en <= 3 {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "SouViewController") as! SouViewController
                self.present(vc, animated: true, completion: nil)
            }
            else{
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "BSRViewController") as! BSRViewController
                self.present(vc, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func call1(_ sender: UIButton) {
        Call1(VCc:self)
    }
    
}
