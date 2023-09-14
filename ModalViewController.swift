//
//  ModalViewController.swift
//  UIExample
//
//  Created by Larry Yu on 9/13/23.
//

import UIKit
import SafariServices

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func openLink(_ sender: Any) {
        if let url = URL(string: "https://www.google.com") {
            let safariVC: SFSafariViewController = SFSafariViewController(url: url)
            self.present(safariVC, animated: true, completion: nil)
            //UIApplication.shared.open(url)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
