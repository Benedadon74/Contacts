//
//  ViewController.swift
//  Contacts
//
//  Created by Bernard Slater on 10/1/19.
//  Copyright © 2019 Bernard Slater. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var btnBack: UIButton!
  
    @IBAction func btnView(_ sender: UIButton) {
        //hide keyboard
        DismissKeyboard()
        
        //declare CGPoint scrollPoint
        var scrollPoint:CGPoint
        
        //X = from Left, Y = from Top
        //get X = 0, Y = location of btnBack Y
        scrollPoint = CGPoint(x: 0, y: btnBack.frame.origin.y)
        
        //Set ScrollPoint and Go to animated
        ScrollView.setContentOffset(scrollPoint, animated: true)
    }
    
  
    
    @IBAction func btnSave(_ sender: UIButton) {
        //Add Below Code from "Code for Steps.txt". Fulfill Each Comment With Code
        
        //Set ScrollPoint and Go to ZERO location (Top) of ScrollView - animated
        ScrollView.setContentOffset(CGPoint.zero, animated: true)
        
        //set txtFirst as firstresponder
        txtFirst.becomeFirstResponder()
    }
    
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        //Add Below Code from "Code for Steps.txt". Fulfill Each Comment With Code
        
        //Set ScrollPoint and Go to ZERO location (Top) of ScrollView - animated
        ScrollView.setContentOffset(CGPoint.zero, animated: true)
        
        //set txtFirst as firstresponder
        txtFirst.becomeFirstResponder()
    }
      
     func MsgBox(_ message:String)
       {
           //Add Below Code from "Code for Steps.txt". Fulfill Each Comment With Code
           //Create Alert
           let alert = UIAlertView()
           alert.title = "Alert"
           alert.message = message
           alert.addButton(withTitle: "OK")
           alert.show()
           
       }
    
    
    // 5) Add touchesBegan function to catch screen tap and resign keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Add Below Code from "Code for Steps.txt". Read Comments
        
        //forces resign first responder and hides keyboard
        txtFirst.endEditing(true)
        txtLast.endEditing(true)
        txtEmail.endEditing(true)
        
        
    }
    
    // 6) Add DismissKeyboard function to resign keyboard on all textboxes
    @objc func DismissKeyboard(){
        //Add Below Code from "Code for Steps.txt". Read Comments
        
        //forces resign first responder and hides keyboard
        txtFirst.endEditing(true)
        txtLast.endEditing(true)
        txtEmail.endEditing(true)
        
        
    }
    
    //  7) Add textFieldShouldReturn function. This is called when 'return' key pressed on any UITextField. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool     {
        //Add Below Code from "Code for Steps.txt". Read Comments
        
        textField.resignFirstResponder()
        return true;
    }
    
    //  8) Add textFieldDidBeginEditing function. ScrollPoint when entering UItextfied
    func textFieldDidBeginEditing(_ textField:UITextField){
        //Add Below Code from "Code for Steps.txt". Read Comments
        var scrollPoint:CGPoint
        scrollPoint = CGPoint(x:0, y:textField.frame.origin.y)
        ScrollView.setContentOffset(scrollPoint, animated: true)
        
    }
    
    // 9) Add textFieldDidEndEditing function. ScrollPoint when done editing UItextfied
    func textFieldDidEndEditing(_ textField:UITextField){
        //Add Below Code from "Code for Steps.txt". Read Comments
        
        ScrollView.setContentOffset(CGPoint.zero, animated: true)
    }
    
    // 10) Add textViewDidBeginEditing function. ScrollPoint when entering UItextView
    func textViewDidBeginEditing(_ textField:UITextView){
        //Add Below Code from "Code for Steps.txt". Read Comments
        var scrollPoint:CGPoint
        scrollPoint = CGPoint(x:0, y:textField.frame.origin.y)
        
        ScrollView.setContentOffset(scrollPoint, animated: true)
        
    }
    
    // 11) Add textViewDidEndEditing function. ScrollPoint when done ending UItextView
    func textViewDidEndEditing(_ textField:UITextView){
        //Add Below Code from "Code for Steps.txt". Read Comments
        ScrollView.setContentOffset(CGPoint.zero, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         //Looks for single or multiple taps
               let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.DismissKeyboard))
               //Adds tap gesture to ScrollView which will call DismissKeyboard and hide keyboard
               ScrollView.addGestureRecognizer(tap)
               //gets ScreenSize of current device
               let size: CGRect = UIScreen.main.bounds
               //Go to left  = 0 pixels, top = 50 pixels, width or device in pixels, height of device in pixels
               ScrollView.frame = CGRect(x:0, y:50, width:size.width, height:size.height)
               //Set focus on txtFirst
               txtFirst.becomeFirstResponder()    }

        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        
    }

