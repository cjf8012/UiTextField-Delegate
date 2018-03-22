//
//  ViewController.swift
//  UiTextField Delegate
//
//  Created by D7703_16 on 2018. 3. 22..
//  Copyright © 2018년 D7703_16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hello: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.placeholder = "입력하세요." //텍스트필드뷰에 글씨를 나타낸다.
        textField.clearButtonMode = UITextFieldViewMode.whileEditing // 입력창에 x모양 추가
    }
    
    @IBAction func button(_ sender: Any) {
        hello.text = "Hello " + textField.text! //Hello label에 글자적은뒤 버튼을 누르면 추가됨
        textField.text = "" //버튼을 한번더 누를시 초기화
        textField.resignFirstResponder() //버튼을 누르면 키패드가 내려간다.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

