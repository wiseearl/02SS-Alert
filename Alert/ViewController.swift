//
//  ViewController.swift
//  Alert
//
//  Created by User on 2016/12/28.
//  Copyright © 2016年 Neonlight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var vc = NSObject.self
    
    @IBAction func btnAlert(_ sender: Any) {
        //showAlertNew()
        showAlertSimple("AAA","BBB")
        //showAlertClass()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Old
    func showAlert()
    {
        /*
        let alert: UIAlertView = UIAlertView()
      
        alert.delegate = nil
        alert.addButton(withTitle: "Ok")
        alert.show()
 */
    }
    
    //New
    func showAlertNew()
    {
        let alertController = UIAlertController(title: "Title", message: "This is my text", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "確認", style: UIAlertAction.Style.default)
        {
            (result : UIAlertAction) -> Void in
            print("You pressed OK")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    

    func showAlertSimple(_ strTitle : String,_ strMessage : String )
    {
        
        let alertController = UIAlertController(title: strTitle, message: strMessage,
                                                preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        {
            (result : UIAlertAction) -> Void in
            //print("You pressed OK")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }

    
    //New Class,not finish yet
    func showAlertClass()
    {
        _ = neonlightAlert()
        //if let vc: ViewController = seque.
        //alert.neonAlert( UIViewController.self , "AA", "BB")
    }


}

