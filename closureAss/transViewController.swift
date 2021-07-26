//
//  transViewController.swift
//  closureAss
//
//  Created by Pradnya M. S. Suryavanshi on 15/07/21.
//

import UIKit

class transViewController: UIViewController {
   
//    var pid:String?
//    var pname:String?
//    var padd:String?

    var closureVC2:((String,String,String)->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func gotoinput(){
        if let vc=(self.storyboard?.instantiateViewController(identifier: "InputViewController") as? InputViewController){
            
            vc.closureVC3=self.closureVC2
            
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func viewc(){
        if let vc=self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController
        {
            
//            if let id = pid, let name = pname, let add = padd {
//                closure?(id,name,add)
//
//            }
    
        }
            self.navigationController?.popViewController(animated: true)
        
    }
}
    
