//  TrueLoveViewController.swift
//  chosetruelove
//  Created by user on 2018/5/31.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {

    @IBOutlet weak var zodiac: UITextField!//星座
    @IBOutlet weak var gender: UISegmentedControl!//性別
    @IBOutlet weak var age: UILabel!//年齡
    @IBOutlet weak var answerimgno: UIImageView!//錯的人
    @IBOutlet weak var answerimgyes: UIImageView!//對的人
    
    var agevalue:Int = 22
    @IBAction func age(_ sender: UISlider) {
        age.isHidden = false //將原本隱藏的年紀顯示出來
        agevalue = Int(sender.value) //存slide的回傳值
        age.text = "\(agevalue)" //將age目前移動的數字轉為字串顯示出來
    }//年齡slider
    
    @IBAction func sendbtn(_ sender: AnyObject) {
        let zodiacsign:String = zodiac.text!
        
        if zodiacsign == "scorpio" && gender.selectedSegmentIndex == 0 && agevalue >= 22 && agevalue <= 33 {
            answerimgyes.isHidden = false
            answerimgno.isHidden = true
        }
        else{
            answerimgyes.isHidden = true
            answerimgno.isHidden = false
        }
    }//送出
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
