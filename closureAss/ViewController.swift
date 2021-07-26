//
//  ViewController.swift
//  closureAss
//
//  Created by Pradnya M. S. Suryavanshi on 15/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var id:UILabel?
    @IBOutlet weak var name:UILabel?
    @IBOutlet weak var add:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gototransvc(){
        if  let vc=self.storyboard?.instantiateViewController(identifier: "transViewController") as? transViewController{
            
        vc.closureVC2 = {uid,uname,uadd in
            self.id?.text=uid
            self.name?.text=uname
            self.add?.text=uadd
        }
    
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    }
}

