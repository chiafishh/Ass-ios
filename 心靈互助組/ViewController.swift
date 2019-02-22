//
//  ViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/20.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var V2Text: UITextView!
    
    var en = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
        View2?.isHidden = true
    }
    
    @IBAction func e1Clicked(_ sender: Any) {
        en = 1
        V2Text.text = "您現在心情是普通, 建議可以參訪相關資源! 或按上方『心理互助組」可回首頁!"
        View2?.isHidden = false
    }
    @IBAction func e2Clicked(_ sender: Any) {
        en = 2
        V2Text.text = "您現在心情是超開心, 建議可以參訪相關資源! 或按上方『心理互助組」可回首頁!"
        View2?.isHidden = false
    }
    @IBAction func e3Clicked(_ sender: Any) {
        en = 3
        V2Text.text = "您現在心情是還不錯, 建議可以參訪相關資源! 或按上方『心理互助組」可回首頁!"
        View2?.isHidden = false
    }
    @IBAction func e4Clicked(_ sender: Any) {
        en = 4
        V2Text.text = "您現在心情是不太開心, 建議可以作心情溫度計 (BSRS-5)自我評量!"
        View2?.isHidden = false
    }
    @IBAction func e5Clicked(_ sender: Any) {
        en = 5
        V2Text.text = "您現在心情是難過, 建議可以作心情溫度計 (BSRS-5)自我評量!"
        View2?.isHidden = false
    }
    /*
    @IBAction func Agree(_ sender: Any) {
        if en == 1{
            
        }
        else if en == 2{
            
        }
    }*/
    @IBAction func Agree(_ sender: Any){
        View2?.isHidden = true
        if en <= 3 {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SouViewController") as! SouViewController
            self.present(vc, animated: true, completion: nil)
        }
        else{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BSRViewController") as! BSRViewController
            self.present(vc, animated: true, completion: nil)
        }
    }
    @IBAction func Cancel(_ sender: Any) {
        View2?.isHidden = true
    }
    
}
