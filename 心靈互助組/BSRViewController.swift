//
//  BSRViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/21.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class BSRViewController: UIViewController {

    var ansSum = 0
    var ankx = 0
    var anxk = 0
    
    var btnxy = Array(repeating: Array(repeating: 0, count: 5), count: 6)
    var bsxk = Array(repeating: 0, count: 6)
    
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
    
    @IBOutlet var coAn1s: [UIButton]!
    @IBOutlet var coAn2s: [UIButton]!
    @IBOutlet var coAn3s: [UIButton]!
    @IBOutlet var coAn4s: [UIButton]!
    @IBOutlet var coAn5s: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b10.addTarget(self, action: "buttonClicked:", for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    
    func Ans1() {
        for coAn1 in coAn1s {
            coAn1.isEnabled = true
        }
    }
    
    @IBAction func An10(_ sender: Any) {
        Ans1()
        an10.isEnabled = false
    }
    
    
    
    @IBAction func An11(_ sender: Any) {
        Ans1()
        an11.isEnabled = false
    }
    @IBAction func An12(_ sender: Any) {
        Ans1()
        an12.isEnabled = false
    }
    @IBAction func An13(_ sender: Any) {
        Ans1()
        an13.isEnabled = false
    }
    @IBAction func An14(_ sender: Any) {
        Ans1()
        an14.isEnabled = false
    }
    
    func Ans2() {
        for coAn2 in coAn2s {
            coAn2.isEnabled = true
        }
    }
    
    @IBAction func An20(_ sender: Any) {
        Ans2()
        an20.isEnabled = false
    }
    @IBAction func An21(_ sender: Any) {
        Ans2()
        an21.isEnabled = false
    }
    @IBAction func An22(_ sender: Any) {
        Ans2()
        an22.isEnabled = false
    }
    @IBAction func An23(_ sender: Any) {
        Ans2()
        an23.isEnabled = false
    }
    @IBAction func An24(_ sender: Any) {
        Ans2()
        an24.isEnabled = false
    }
    
    func Ans3() {
        for coAn3 in coAn3s {
            coAn3.isEnabled = true
        }
    }
    @IBAction func An30(_ sender: Any) {
        Ans3()
        an30.isEnabled = false
    }
    @IBAction func An31(_ sender: Any) {
        Ans3()
        an31.isEnabled = false
    }
    @IBAction func An32(_ sender: Any) {
        Ans3()
        an32.isEnabled = false
    }
    
    @IBAction func An33(_ sender: Any) {
        Ans3()
        an33.isEnabled = false
    }
    @IBAction func An34(_ sender: Any) {
        Ans3()
        an34.isEnabled = false
    }
    
    func Ans4() {
        for coAn4 in coAn4s {
            coAn4.isEnabled = true
        }
    }
    
    @IBAction func An40(_ sender: Any) {
        Ans4()
        an40.isEnabled = false
    }
    @IBAction func An41(_ sender: Any) {
        Ans4()
        an41.isEnabled = false
    }
    @IBAction func An42(_ sender: Any) {
        Ans4()
        an42.isEnabled = false
    }
    @IBAction func An43(_ sender: Any) {
        Ans4()
        an43.isEnabled = false
    }
    @IBAction func An44(_ sender: Any) {
        Ans4()
        an44.isEnabled = false
    }
    
    func Ans5() {
        for coAn5 in coAn5s {
            coAn5.isEnabled = true
        }
    }
    @IBAction func An50(_ sender: Any) {
        Ans5()
        an50.isEnabled = false
    }
    @IBAction func An51(_ sender: Any) {
        Ans5()
        an51.isEnabled = false
    }
    @IBAction func An52(_ sender: Any) {
        Ans5()
        an52.isEnabled = false
    }
    @IBAction func An53(_ sender: Any) {
        Ans5()
        an53.isEnabled = false
    }
    @IBAction func An54(_ sender: Any) {
        Ans5()
        an54.isEnabled = false
    }
    
    func Count0(){
        bsxk[anxk] = ankx
        ansSum = bsxk[1]+bsxk[2]+bsxk[3]+bsxk[4]+bsxk[5]
    }
    
    @IBAction func Anx0(_ sender: Any) {
        ankx = 0
        Count0()
        
    }
    @IBAction func Anx1(_ sender: Any) {
        ankx = 1
        Count0()
    }
    
    @IBAction func An1x(_ sender: UIButton) {
        anxk = 1
        bsxk[1] = ankx
    }
    @IBAction func An2x(_ sender: UIButton) {
        anxk = 2
        bsxk[2] = ankx
    }
    @IBAction func An3x(_ sender: UIButton) {
        anxk = 3
        bsxk[3] = ankx
    }
    @IBAction func An4x(_ sender: UIButton) {
        anxk = 4
        bsxk[4] = ankx
    }
    @IBAction func An5x(_ sender: UIButton) {
        anxk = 5
        bsxk[5] = ankx
    }
    
    @IBAction func Done(_ sender: Any) {
        if(ansSum < 10)
        {
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n建議參訪相關資源"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "參訪相關資源", style: .default, handler: { (action) in
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SouViewController") as! SouViewController
                    self.present(vc, animated: true, completion: nil)
            }))
            alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: { (action) in self.Cancel0() }))
            self.present(alert, animated: true, completion: nil)
        }
        else if(ansSum < 15)
        {
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n建議撥打自殺防治專線\n或尋找相關資源!"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "撥打", style: .default, handler: { (action) in
                makePhoneCall(ViewController:self,phoneNumber: "+886981839228")
            }))
            alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: { (action) in self.Cancel0() }))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let alert = UIAlertController(title: nil, message: ("您的結果為\(ansSum)分，\n請撥打自殺防治專線!"), preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "撥打", style: .default, handler: { (action) in
                makePhoneCall(ViewController:self,phoneNumber: "+886981839228")
            }))
            alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: { (action) in self.Cancel0() }))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func Cancel0(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BSRViewController") as! BSRViewController
        self.present(vc, animated: false, completion: nil)
    }
  
}
