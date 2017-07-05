//
//  GroupSetsPopoverController.swift
//  Fitclip
//
//  Created by Sooji Kim on 7/4/17.
//  Copyright © 2017 Sooji & Ulysses. All rights reserved.
//

import UIKit

class GroupSetsPopoverController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSize(width: 375, height: 162)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoButtonSegue" {
            let popoverViewController = segue.destination as! GroupSetsPopoverController
            
            let pvc = popoverViewController.popoverPresentationController
            pvc?.delegate = self
            
            //popoverViewController.modalPresentationStyle = UIModalPresentationStyle.popover
            //popoverViewController.popoverPresentationController!.delegate = self
        }
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
    

}
