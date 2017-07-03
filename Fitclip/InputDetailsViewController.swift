//
//  InputDetailsViewController.swift
//  Fitclip
//
//  Created by Sooji Kim on 4/10/17.
//  Copyright © 2017 Sooji & Ulyssßes. All rights reserved.
//

import UIKit

class InputDetailsViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var CaptionBox: UITextView!
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CaptionBox.delegate = self
        CaptionBox.text = "Write your caption here."
        CaptionBox.textColor = UIColor.lightGray
        
        // At start: right bar button should be next
        let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
        self.navigationItem.rightBarButtonItem = nextButton
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
        
        // When editing text view box, the right bar button item should change to the "Done" button.
        let saveButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = saveButton
        
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Write your caption here."
            textView.textColor = UIColor.lightGray
        }
        else {
            let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
            self.navigationItem.rightBarButtonItem = nextButton
        }
    }
    
    func nextTapped (sender: UIBarButtonItem) {
        let chooseViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "ChooseViewController") as? ChooseViewController
        self.navigationController?.pushViewController(chooseViewControllerObj!, animated: true)
    }
}
