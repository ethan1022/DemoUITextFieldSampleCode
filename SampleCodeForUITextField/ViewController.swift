//
//  ViewController.swift
//  SampleCodeForUITextField
//
//  Created by Ethan on 2016/10/18.
//  Copyright © 2016年 EthanLabs. All rights reserved.
//

import UIKit

//2.讓UIViewController可以使用UITextField的相關函式（加入UITextFieldDelegate）
class ViewController: UIViewController, UITextFieldDelegate {
    
    //1. 建立連結
    @IBOutlet weak var demoTextField: UITextField!
    @IBOutlet weak var alertMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //3.請UIViewController幫忙處理鍵盤事宜
        self.demoTextField.delegate = self
        self.alertMessageTextField.delegate = self
    
    }
    
    //4.使用UITextField函式，點擊Return進而觸發相關動作
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //5.加入收起鍵盤的函式
        return true //6.別忘了回覆true
    }
    
    //7.建立按鈕連結
    @IBAction func tapToAlert(_ sender: AnyObject) {
        
        //8.建立alertController
        let alertController = UIAlertController(title: self.demoTextField.text, message: self.alertMessageTextField.text, preferredStyle: .alert)
        
        //9. OK建立按鈕
        let okBut = UIAlertAction(title: "我知道了", style: .default) { (UIAlertAction) in
            // 10. 建立點擊OK之後的行為
        }
        
        // 11. 建立取消按鈕
        let cancelBut = UIAlertAction(title: "取消", style: .cancel) { (UIAlertAction) in
            //12. 建立點擊取消之後的行為
        }
        
        // 13. 將按鈕加入alertController
        alertController.addAction(cancelBut)
        alertController.addAction(okBut)
        
        //14. 呈現alertController畫面
        self.present(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

