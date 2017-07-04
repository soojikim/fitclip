//
//  InputDetailsViewController.swift
//  Fitclip
//
//  Created by Sooji Kim on 4/10/17.
//  Copyright © 2017 Sooji & Ulyssßes. All rights reserved.
//

import UIKit

class InputDetailsViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var ScrollView: UIScrollView!
    
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margins = ScrollView.layoutMarginsGuide
        
        // Add title label.
        let title = UILabel()
        title.text = "Title"
        title.textColor = UIColor.black
        title.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(title)
        
        title.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        title.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0).isActive = true
        
        // Add text field for title.
        let titleTextField = UITextField()
        titleTextField.placeholder = "Name your circuit..."
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(titleTextField)
        
        titleTextField.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        titleTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 10).isActive = true
        titleTextField.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 4).isActive = true
  
        // Add separation line #1.
        let lineOne = UIView()
        lineOne.backgroundColor = UIColor.lightGray
        lineOne.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineOne)
        
        lineOne.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineOne.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineOne.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineOne.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 10).isActive = true
        
        // Add caption label.
        let caption = UILabel()
        caption.text = "Caption"
        caption.textColor = UIColor.black
        caption.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(caption)
        
        caption.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        caption.topAnchor.constraint(equalTo: lineOne.bottomAnchor, constant: 10).isActive = true
        
        // Add text view box for caption.
        let placeholderColor = UIColor(red: 199/255, green: 199/255, blue: 205/255, alpha: 1)
        
        let captionBox = UITextView()
        captionBox.delegate = self
        captionBox.text = "Describe your circuit..."
        captionBox.textColor = placeholderColor
        captionBox.layer.borderColor = UIColor.black.cgColor
        captionBox.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(captionBox)
        
        captionBox.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        captionBox.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 10).isActive = true
        captionBox.topAnchor.constraint(equalTo: caption.bottomAnchor, constant: 4).isActive = true
        captionBox.heightAnchor.constraint(equalToConstant: 132).isActive = true
        
        // Add separation lines #2 & 3.
        let lineTwo = UIView()
        lineTwo.backgroundColor = UIColor.lightGray
        lineTwo.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineTwo)
        
        lineTwo.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineTwo.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineTwo.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineTwo.topAnchor.constraint(equalTo: captionBox.bottomAnchor, constant: 10).isActive = true
        
        let lineThree = UIView()
        lineThree.backgroundColor = UIColor.lightGray
        lineThree.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineThree)
        
        lineThree.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineThree.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineThree.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineThree.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: 2).isActive = true
        
        // Add separation lines #4 & 5.
        let lineFour = UIView()
        lineFour.backgroundColor = UIColor.lightGray
        lineFour.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineFour)
        
        lineFour.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineFour.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineFour.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineFour.topAnchor.constraint(equalTo: lineThree.bottomAnchor, constant: 40).isActive = true
        
        let lineFive = UIView()
        lineFive.backgroundColor = UIColor.lightGray
        lineFive.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineFive)
        
        lineFive.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineFive.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineFive.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineFive.topAnchor.constraint(equalTo: lineFour.bottomAnchor, constant: 2).isActive = true
        
        // Add "Number of Exercises" text field.
        let numExTextField = UITextField()
        numExTextField.placeholder = "0"
        numExTextField.keyboardType = UIKeyboardType.numberPad
        numExTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numExTextField)
        
        numExTextField.topAnchor.constraint(equalTo: lineFive.bottomAnchor, constant: 10).isActive = true
        numExTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        numExTextField.widthAnchor.constraint(equalToConstant: 50)
        
        // Add "Number of Exercises" label.
        let numExercises = UILabel()
        numExercises.text = "Number of Exercises"
        numExercises.textColor = UIColor.black
        numExercises.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numExercises)
        
        numExercises.centerYAnchor.constraint(equalTo: numExTextField.centerYAnchor, constant: 0).isActive = true
        numExercises.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        
        
        
        // At start: right bar button should be next
        let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
        self.navigationItem.rightBarButtonItem = nextButton
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
        // At start: title in navigation bar should be "Circuit Details"
        self.navigationItem.title = "Circuit Details"
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
        
        // When editing text view box, the right bar button item should change to the "Done" button.
        let saveButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = saveButton
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Write your caption here."
            textView.textColor = UIColor.lightGray
        }
        else {
            let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
            self.navigationItem.rightBarButtonItem = nextButton
            self.navigationItem.rightBarButtonItem?.tintColor = .white
        }
    }
    
    func nextTapped (sender: UIBarButtonItem) {
        let chooseViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "ChooseViewController") as? ChooseViewController
        self.navigationController?.pushViewController(chooseViewControllerObj!, animated: true)
    }
}
