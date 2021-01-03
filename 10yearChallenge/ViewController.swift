//
//  ViewController.swift
//  WeightLossChange
//
//  Created by lijensu on 2020/12/19.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var pictureShowed: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pictureShowed.image=UIImage(named: "2013")
        yearLabel.text="立人"+"2013"+"年的樣子"
    }

    @IBAction func changePicker(_ sender: UIDatePicker)
    {
        let dateFormatter=DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let yearOfPicker=Float(dateFormatter.string(from: sender.date))!
        slider.setValue(yearOfPicker, animated: true)
        pictureShowed.image=UIImage(named: "\(yearOfPicker)")
        yearLabel.text="立人"+"\(yearOfPicker)"+"年的樣子"
    }
    
   
    @IBAction func changeSlider(_ sender: UISlider)
    {
        let dateFormatter=DateFormatter()
        let yearOfSlider = "\(Int(sender.value))"
        dateFormatter.dateFormat = "yyyy/MM/dd"
        datePicker.setDate(dateFormatter.date(from: yearOfSlider+"/01/01")!, animated: true)
        pictureShowed.image=UIImage(named: yearOfSlider)
        yearLabel.text="立人"+yearOfSlider+"年的樣子"
    }

    
}

