//
//  Alert.swift
//  Alert
//
//  Created by User on 2016/12/28.
//  Copyright © 2016年 Neonlight. All rights reserved.
//

import Foundation
import UIKit

class neonlightAlert
{
    func neonAlert(_ vc: UIViewController,_ strTitle : String,_ strMessage : String )
    {

        let alertController = UIAlertController(title: strTitle, message: strMessage,
                                                preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        {
            (result : UIAlertAction) -> Void in
            //print("You pressed OK")
        }
        alertController.addAction(okAction)
        vc.present(alertController, animated: true, completion: nil)
 
    }

}

