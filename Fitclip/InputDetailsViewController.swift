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
    
    // Initialize for view controller.
    let circuitTitle = UILabel()
    let titleTextField = UITextField()
    let lineOne = UIView()
    let caption = UILabel()
    let placeholderColor = UIColor(red: 199/255, green: 199/255, blue: 205/255, alpha: 1)
    let captionBox = UITextView()
    let lineTwo = UIView()
    let lineThree = UIView()
    let numExTextField = UITextField()
    let numExercises = UILabel()
    let restBetExTextField = UITextField()
    let restBetEx = UILabel()
    let lineFour = UIView()
    let numRoundsTextField = UITextField()
    let numRounds = UILabel()
    let restBetRdsTextField = UITextField()
    let restBetRds = UILabel()
    let lineFive = UIView()
    let groupSetsSwitch = UISwitch()
    let groupSets = UILabel()
    let infoButton = UIButton(type: .infoLight)
    let groupSetsExplain = UILabel()
    let numSetsTextField = UITextField()
    let numSets = UILabel()
    let restBetSetsTextField = UITextField()
    let restBetSets = UILabel()
    let groupSetsView = UIView(frame: CGRect(x: 10, y: 440, width: 395, height: 100))
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margins = ScrollView.layoutMarginsGuide
        let fitclipColor = UIColor(red: 254/255, green: 196/255, blue: 24/255, alpha: 1)
        
        // Add title label.
        circuitTitle.text = "Title"
        circuitTitle.textColor = UIColor.black
        circuitTitle.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(circuitTitle)
        
        circuitTitle.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        circuitTitle.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0).isActive = true
        
        // Add text field for title.
        titleTextField.placeholder = "Name your circuit..."
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(titleTextField)
        
        titleTextField.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        titleTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 10).isActive = true
        titleTextField.topAnchor.constraint(equalTo: circuitTitle.bottomAnchor, constant: 4).isActive = true
  
        // Add separation line #1.
        lineOne.backgroundColor = UIColor.lightGray
        lineOne.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineOne)
        
        lineOne.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineOne.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineOne.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineOne.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 10).isActive = true
        
        // Add caption label.
        caption.text = "Caption"
        caption.textColor = UIColor.black
        caption.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(caption)
        
        caption.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        caption.topAnchor.constraint(equalTo: lineOne.bottomAnchor, constant: 10).isActive = true
        
        // Add text view box for caption.
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
        lineTwo.backgroundColor = UIColor.lightGray
        lineTwo.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineTwo)
        
        lineTwo.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineTwo.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineTwo.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineTwo.topAnchor.constraint(equalTo: captionBox.bottomAnchor, constant: 10).isActive = true
        
        lineThree.backgroundColor = UIColor.lightGray
        lineThree.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineThree)
        
        lineThree.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineThree.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineThree.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineThree.topAnchor.constraint(equalTo: lineTwo.bottomAnchor, constant: 2).isActive = true
        
        // Add "Number of Exercises" text field.
        numExTextField.placeholder = "0"
        numExTextField.keyboardType = UIKeyboardType.numberPad
        numExTextField.textAlignment = NSTextAlignment.right
        numExTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numExTextField)
        
        numExTextField.topAnchor.constraint(equalTo: lineThree.bottomAnchor, constant: 10).isActive = true
        numExTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        numExTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Add "Number of Exercises" label.
        numExercises.text = "Number of Exercises"
        numExercises.textColor = UIColor.black
        numExercises.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numExercises)
        
        numExercises.centerYAnchor.constraint(equalTo: numExTextField.centerYAnchor, constant: 0).isActive = true
        numExercises.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        // Add "Rest between Exercises" text field.
        restBetExTextField.placeholder = "0"
        restBetExTextField.keyboardType = UIKeyboardType.numberPad
        restBetExTextField.textAlignment = NSTextAlignment.right
        restBetExTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(restBetExTextField)
        
        restBetExTextField.topAnchor.constraint(equalTo: numExTextField.bottomAnchor, constant: 10).isActive = true
        restBetExTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        restBetExTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Add "Rest between Exercises" label.
        restBetEx.text = "Rest between Exercises (Seconds)"
        restBetEx.textColor = UIColor.black
        restBetEx.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(restBetEx)
        
        restBetEx.centerYAnchor.constraint(equalTo: restBetExTextField.centerYAnchor, constant: 0).isActive = true
        restBetEx.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        // Add separation line #4.
        lineFour.backgroundColor = UIColor.lightGray
        lineFour.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineFour)
        
        lineFour.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineFour.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineFour.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineFour.topAnchor.constraint(equalTo: restBetExTextField.bottomAnchor, constant: 10).isActive = true
        
        // Add "Number of Rounds" text field.
        numRoundsTextField.placeholder = "0"
        numRoundsTextField.keyboardType = UIKeyboardType.numberPad
        numRoundsTextField.textAlignment = NSTextAlignment.right
        numRoundsTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numRoundsTextField)
        
        numRoundsTextField.topAnchor.constraint(equalTo: lineFour.bottomAnchor, constant: 10).isActive = true
        numRoundsTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        numRoundsTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Add "Number of Rounds" label.
        numRounds.text = "Number of Rounds"
        numRounds.textColor = UIColor.black
        numRounds.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(numRounds)
        
        numRounds.centerYAnchor.constraint(equalTo: numRoundsTextField.centerYAnchor, constant: 0).isActive = true
        numRounds.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        // Add "Rest between Rounds" text field.
        restBetRdsTextField.placeholder = "0"
        restBetRdsTextField.keyboardType = UIKeyboardType.numberPad
        restBetRdsTextField.textAlignment = NSTextAlignment.right
        restBetRdsTextField.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(restBetRdsTextField)
        
        restBetRdsTextField.topAnchor.constraint(equalTo: numRoundsTextField.bottomAnchor, constant: 10).isActive = true
        restBetRdsTextField.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        restBetRdsTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Add " Rest between Rounds' label.
        restBetRds.text = "Rest between Rounds (Seconds)"
        restBetRds.textColor = UIColor.black
        restBetRds.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(restBetRds)
        
        restBetRds.centerYAnchor.constraint(equalTo: restBetRdsTextField.centerYAnchor, constant: 0).isActive = true
        restBetRds.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        // Add separation line #5.
        lineFive.backgroundColor = UIColor.lightGray
        lineFive.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(lineFive)
        
        lineFive.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineFive.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0).isActive = true
        lineFive.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0).isActive = true
        lineFive.topAnchor.constraint(equalTo: restBetRdsTextField.bottomAnchor, constant: 10).isActive = true
        
        // Add switch for "Group into Sets?"
        groupSetsSwitch.setOn(false, animated: true)
        groupSetsSwitch.onTintColor = fitclipColor
        groupSetsSwitch.translatesAutoresizingMaskIntoConstraints = false
        groupSetsSwitch.addTarget(self, action: #selector(groupSetsSwitchOn), for: UIControlEvents.valueChanged)
        ScrollView.addSubview(groupSetsSwitch)
        
        groupSetsSwitch.topAnchor.constraint(equalTo: lineFive.bottomAnchor, constant: 10).isActive = true
        groupSetsSwitch.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        
        // Add "Group into Sets?" label.
        groupSets.text = "Group into Sets?"
        groupSets.textColor = UIColor.black
        groupSets.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(groupSets)
        
        groupSets.centerYAnchor.constraint(equalTo: groupSetsSwitch.centerYAnchor, constant: 0).isActive = true
        groupSets.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        
        // Add information button.
        infoButton.tintColor = fitclipColor
        infoButton.addTarget(self, action: #selector(infoButtonTapped), for: UIControlEvents.touchUpInside)
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        ScrollView.addSubview(infoButton)
        
        infoButton.centerYAnchor.constraint(equalTo: groupSetsSwitch.centerYAnchor, constant: 0).isActive = true
        infoButton.leadingAnchor.constraint(equalTo: groupSets.trailingAnchor, constant: 10).isActive = true
        
        // Add group sets explanation label.
        groupSetsExplain.text = "If you group your exercises into sets, you can repeat exercises in Set 1 before starting exercises in Set 2. If you don't group your exercises into sets, you'll do all the exercises once before repeating them again."
        groupSetsExplain.textColor = UIColor.black
        groupSetsExplain.numberOfLines = 6
        groupSetsExplain.adjustsFontSizeToFitWidth = true
        groupSetsExplain.minimumScaleFactor = 0.2
        groupSetsExplain.allowsDefaultTighteningForTruncation = true
        groupSetsExplain.translatesAutoresizingMaskIntoConstraints = false
        groupSetsExplain.isHidden = true
        groupSetsExplain.layer.borderWidth = 1.0
        groupSetsExplain.layer.cornerRadius = 8
        groupSetsExplain.layer.borderColor = UIColor.lightGray.cgColor
        ScrollView.addSubview(groupSetsExplain)
        
        groupSetsExplain.topAnchor.constraint(equalTo: infoButton.bottomAnchor, constant: 5).isActive = true
        groupSetsExplain.centerXAnchor.constraint(equalTo: infoButton.centerXAnchor, constant: 0).isActive = true
        groupSetsExplain.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        // Add view for group sets.
        groupSetsView.backgroundColor = UIColor.white
        ScrollView.addSubview(groupSetsView)
        
        // Add text field for "Number of Sets"
        numSetsTextField.placeholder = "0"
        numSetsTextField.keyboardType = UIKeyboardType.numberPad
        numSetsTextField.textAlignment = NSTextAlignment.right
        numSetsTextField.translatesAutoresizingMaskIntoConstraints = false
        groupSetsView.addSubview(numSetsTextField)
        
        numSetsTextField.topAnchor.constraint(equalTo: groupSetsView.topAnchor, constant: 0).isActive = true
        numSetsTextField.trailingAnchor.constraint(equalTo: groupSetsView.trailingAnchor, constant: -10).isActive = true
        numSetsTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        // Add label for "Number of Sets"
        numSets.text = "Number of Sets"
        numSets.textColor = UIColor.black
        numSets.translatesAutoresizingMaskIntoConstraints = false
        groupSetsView.addSubview(numSets)
        
        numSets.centerYAnchor.constraint(equalTo: numSetsTextField.centerYAnchor, constant: 0).isActive = true
        numSets.leadingAnchor.constraint(equalTo: groupSetsView.leadingAnchor, constant: 10).isActive = true
        
        // Add text field for "Rest between Sets"
        restBetSetsTextField.placeholder = "0"
        restBetSetsTextField.keyboardType = UIKeyboardType.numberPad
        restBetSetsTextField.textAlignment = NSTextAlignment.right
        restBetSetsTextField.translatesAutoresizingMaskIntoConstraints = false
        groupSetsView.addSubview(restBetSetsTextField)
        
        restBetSetsTextField.topAnchor.constraint(equalTo: numSetsTextField.bottomAnchor, constant: 10).isActive = true
        restBetSetsTextField.trailingAnchor.constraint(equalTo: groupSetsView.trailingAnchor, constant: -10).isActive = true
        
        // Add label for "Rest between Sets"
        restBetSets.text = "Rest between Sets (Seconds)"
        restBetSets.textColor = UIColor.black
        restBetSets.translatesAutoresizingMaskIntoConstraints = false
        groupSetsView.addSubview(restBetSets)
        
        restBetSets.centerYAnchor.constraint(equalTo: restBetSetsTextField.centerYAnchor, constant: 0).isActive = true
        restBetSets.leadingAnchor.constraint(equalTo: groupSetsView.leadingAnchor, constant: 10).isActive = true
        
        // At start, groupSetsView should be hidden.
        groupSetsView.alpha = 0.0
        
        // At start: right bar button should be next
        let nextButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(nextTapped))
        self.navigationItem.rightBarButtonItem = nextButton
        self.navigationItem.rightBarButtonItem?.tintColor = .white
        
        // At start: title in navigation bar should be "Circuit Details"
        self.navigationItem.title = "Circuit Details"
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        let placeholderColor = UIColor(red: 199/255, green: 199/255, blue: 205/255, alpha: 1)
        
        if textView.textColor == placeholderColor {
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
    
    func infoButtonTapped (sender: UIButton) {
        if groupSetsExplain.isHidden == true {
            groupSetsExplain.isHidden = false
        }
        else {
            groupSetsExplain.isHidden = true
        }
    }
    
    func groupSetsSwitchOn (sender: UISwitch) {
        if groupSetsSwitch.isOn {
            UIView.animate(withDuration: 0.2, delay: 0.0, animations: {self.groupSetsView.alpha = 1}, completion: nil)
        }
        else {
            UIView.animate(withDuration: 0.2, delay: 0.0, animations: {self.groupSetsView.alpha = 0}, completion: nil)
        }
    }
    
    
}
