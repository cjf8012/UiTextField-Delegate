//
//  ViewController.swift
//  UITextField Delegate 1
//
//  Created by D7702_09 on 2018. 3. 22..
//  Copyright © 2018년 lse. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var Hello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Delegate 와 ViewController 연결한다.
        TextField.delegate = self
        
        TextField.placeholder = "입력해보세요!"
        TextField.clearButtonMode = UITextFieldViewMode.whileEditing
    }
    
    @IBAction func Click(_ sender: Any) {
        Hello.text = "Hello " + TextField.text!
        TextField.text = ""
        TextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        TextField.resignFirstResponder()
        view.backgroundColor = UIColor.green
    }
    // view를 터치하면 키패드가 내려감
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TextField.resignFirstResponder()
        view.backgroundColor = UIColor.red
        return true
    }
    // Clear button을 눌렀을때 호출re
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.backgroundColor = UIColor.brown
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
