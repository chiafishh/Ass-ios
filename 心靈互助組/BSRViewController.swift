//
//  BSRViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/21.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class BSRViewController: UIViewController {
    
    @IBOutlet weak var an10: UIButton!
    @IBOutlet weak var an11: UIButton!
    @IBOutlet weak var an12: UIButton!
    @IBOutlet weak var an13: UIButton!
    @IBOutlet weak var an14: UIButton!
    @IBOutlet weak var an20: UIButton!
    @IBOutlet weak var an21: UIButton!
    @IBOutlet weak var an22: UIButton!
    @IBOutlet weak var an23: UIButton!
    @IBOutlet weak var an24: UIButton!
    @IBOutlet weak var an30: UIButton!
    @IBOutlet weak var an31: UIButton!
    @IBOutlet weak var an32: UIButton!
    @IBOutlet weak var an33: UIButton!
    @IBOutlet weak var an34: UIButton!
    @IBOutlet weak var an40: UIButton!
    @IBOutlet weak var an41: UIButton!
    @IBOutlet weak var an42: UIButton!
    @IBOutlet weak var an43: UIButton!
    @IBOutlet weak var an44: UIButton!
    @IBOutlet weak var an50: UIButton!
    @IBOutlet weak var an51: UIButton!
    @IBOutlet weak var an52: UIButton!
    @IBOutlet weak var an53: UIButton!
    @IBOutlet weak var an54: UIButton!
    
    var ansSum = 0
    var xk = 0
    var xkans:[Int] = [0,0,0,0,0,0]
    var Btn:[[UIButton]] = []
    var Btn00,Btn1k,Btn2k,Btn3k,Btn4k,Btn5k:[UIButton]!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        Btn00 = []
        Btn1k = [an10,an11,an12,an13,an14]
        Btn2k = [an20,an21,an22,an23,an24]
        Btn3k = [an30,an31,an32,an33,an34]
        Btn4k = [an40,an41,an42,an43,an44]
        Btn5k = [an50,an51,an52,an53,an54]
        Btn = [Btn00,Btn1k,Btn2k,Btn3k,Btn4k,Btn5k]
    }
    
    @IBAction func An1x(_ sender: UIButton) {
        xk = 1
        xkans[xk] = sender.tag
        F0()
    }
    @IBAction func An2x(_ sender: UIButton) {
        xk = 2
        xkans[xk] = sender.tag
        F0()
    }
    @IBAction func An3x(_ sender: UIButton) {
        xk = 3
        xkans[xk] = sender.tag
        F0()
    }
    @IBAction func An4x(_ sender: UIButton) {
        xk = 4
        xkans[xk] = sender.tag
        F0()
    }
    @IBAction func An5x(_ sender: UIButton) {
        xk = 5
        xkans[xk] = sender.tag
        F0()
    }
    
    @IBAction func Done(_ sender: Any) {
        if(ansSum < 10)
        {
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n建議參訪相關資源"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "取消", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "參訪相關資源", style: .default, handler: { (action) in
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SouViewController") as! SouViewController
                    self.present(vc, animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else if(ansSum < 15)
        {
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n建議撥打自殺防治專線\n或尋找相關資源!"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "取消", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "撥打", style: .default, handler: { (action) in
                if let phoneURL = NSURL(string: ("tel://" + "+886800788995")){
                    UIApplication.shared.open(phoneURL as URL)
                }
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n請撥打自殺防治專線!"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "取消", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "撥打", style: .default, handler: { (action) in
                if let phoneURL = NSURL(string: ("tel://" + "+886800788995")){
                UIApplication.shared.open(phoneURL as URL)
                }
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
    }  
    
    func F0(){
        ansSum = xkans[1]+xkans[2]+xkans[3]+xkans[4]+xkans[5]
        
        for i in 0...4{
            Btn[xk][i].isEnabled=true
        }
        Btn[xk][xkans[xk]].isEnabled = false
    }
  
    @IBAction func call1(_ sender: Any) {
        Call1(VCc:self)
    }
}

