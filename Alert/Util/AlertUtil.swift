//
//  AlertUtil.swift
//  Alert
//
//  Created by Jia-Hong Lee on 2020/10/30.
//  Copyright © 2020 Neonlight. All rights reserved.
//

import Foundation
import UIKit

class AlertUtil{
    
    class func showSimpleAlert(uiVC: UIViewController, strTitle : String, strMsg : String)
    {
        let alertController = UIAlertController(title: strTitle, message: strMsg, preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        {
            (result : UIAlertAction) -> Void in
            print("You pressed OK")
        }
        alertController.addAction(okAction)
        uiVC.present(alertController, animated: true, completion: nil)
        
    }
}
