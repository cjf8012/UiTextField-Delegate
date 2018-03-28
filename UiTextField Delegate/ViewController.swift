//
//  ViewController.swift
//  UITextField Deligate01
//
//  Created by D7702_10 on 2018. 3. 22..
//  Copyright © 2018년 ksh. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var labs: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labs.delegate = self
        labs.placeholder = "입력을 하세요!"
        labs.clearButtonMode = UITextFieldViewMode.whileEditing
        
    }
    @IBAction func bt(_ sender: Any) {
        lab.text = "Hello, " + labs.text!
        labs.text = ""
        labs.resignFirstResponder()
        //view를 터치하면 키패드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        labs.resignFirstResponder()
        view.backgroundColor = UIColor.black
    }
        //UITextFieldDelegate Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        labs.resignFirstResponder()
        view.backgroundColor = UIColor.red
        return true
        
    }
        // clear button을 눌렀을때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        labs.backgroundColor = UIColor.darkGray
        return true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
