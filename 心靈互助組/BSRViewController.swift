//
//  BSRViewController.swift
//  心靈互助組
//
//  Created by User08 on 2019/2/21.
//  Copyright © 2019 Chiafishh. All rights reserved.
//

import UIKit

class BSRViewController: UIViewController {

    var anss = 0
    var ans1 = 0
    var ans2 = 0
    var ans3 = 0
    var ans4 = 0
    var ans5 = 0

    @IBOutlet weak var hihi: UILabel!
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
        ans1 = 0
    }
    @IBAction func An11(_ sender: Any) {
        Ans1()
        an11.isEnabled = false
        ans1 = 1
    }
    @IBAction func An12(_ sender: Any) {
        Ans1()
        an12.isEnabled = false
        ans1 = 2
    }
    @IBAction func An13(_ sender: Any) {
        Ans1()
        an13.isEnabled = false
        ans1 = 3
    }
    @IBAction func An14(_ sender: Any) {
        Ans1()
        an14.isEnabled = false
        ans1 = 4
    }
    
    func Ans2() {
        for coAn2 in coAn2s {
            coAn2.isEnabled = true
        }
    }
    
    @IBAction func An20(_ sender: Any) {
        Ans2()
        an20.isEnabled = false
        ans2 = 0
    }
    @IBAction func An21(_ sender: Any) {
        Ans2()
        an21.isEnabled = false
        ans2 = 1
    }
    @IBAction func An22(_ sender: Any) {
        Ans2()
        an22.isEnabled = false
        ans2 = 2
    }
    @IBAction func An23(_ sender: Any) {
        Ans2()
        an23.isEnabled = false
        ans2 = 3
    }
    @IBAction func An24(_ sender: Any) {
        Ans2()
        an24.isEnabled = false
        ans2 = 4
    }
    
    func Ans3() {
        for coAn3 in coAn3s {
            coAn3.isEnabled = true
        }
    }
    @IBAction func An30(_ sender: Any) {
        Ans3()
        an30.isEnabled = false
        ans3 = 0
    }
    @IBAction func An31(_ sender: Any) {
        Ans3()
        an31.isEnabled = false
        ans3 = 1
    }
    @IBAction func An32(_ sender: Any) {
        Ans3()
        an32.isEnabled = false
        ans3 = 2
    }
    
    @IBAction func An33(_ sender: Any) {
        Ans3()
        an33.isEnabled = false
        ans3 = 3
    }
    @IBAction func An34(_ sender: Any) {
        Ans3()
        an34.isEnabled = false
        ans3 = 4
    }
    
    func Ans4() {
        for coAn4 in coAn4s {
            coAn4.isEnabled = true
        }
    }
    
    @IBAction func An40(_ sender: Any) {
        Ans4()
        an40.isEnabled = false
        ans4 = 0
    }
    @IBAction func An41(_ sender: Any) {
        Ans4()
        an41.isEnabled = false
        ans4 = 1
    }
    @IBAction func An42(_ sender: Any) {
        Ans4()
        an42.isEnabled = false
        ans4 = 2
    }
    @IBAction func An43(_ sender: Any) {
        Ans4()
        an43.isEnabled = false
        ans4 = 3
    }
    @IBAction func An44(_ sender: Any) {
        Ans4()
        an44.isEnabled = false
        ans4 = 4
    }
    
    func Ans5() {
        for coAn5 in coAn5s {
            coAn5.isEnabled = true
        }
    }
    @IBAction func An50(_ sender: Any) {
        Ans5()
        an50.isEnabled = false
        ans5 = 0
    }
    @IBAction func An51(_ sender: Any) {
        Ans5()
        an51.isEnabled = false
        ans5 = 1
    }
    @IBAction func An52(_ sender: Any) {
        Ans5()
        an52.isEnabled = false
        ans5 = 2
    }
    @IBAction func An53(_ sender: Any) {
        Ans5()
        an53.isEnabled = false
        ans5 = 3
    }
    @IBAction func An54(_ sender: Any) {
        Ans5()
        an54.isEnabled = false
        ans5 = 4
    }
    
    @IBAction func Done(_ sender: Any) {
        hihi.text = "\(ans1+ans2+ans3+ans4+ans5)"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
