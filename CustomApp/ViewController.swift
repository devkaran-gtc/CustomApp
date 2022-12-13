//
//  ViewController.swift
//  CustomApp
//
//  Created by Devkaran's Mac mini on 07/12/22.
//
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.object(forInfoDictionaryKey: "API_URL") {
            print("Current URL: \(url)")
        }
        
        if let bundleId = Bundle.main.object(forInfoDictionaryKey: "BUNDLE_IDENTIFIER") {
            print("Current Bundle is : \(bundleId)")
        }
        
        let titleLabel = {
            let label = UILabel(frame: CGRect(x: 0, y:0, width: 200, height: 60))
            label.backgroundColor = .red
            if let configurationTitle = Bundle.main.infoDictionary?["BASE_URL"]  {
                label.text = configurationTitle as! String
            }
            label.textColor = .white
            label.textAlignment = .center
            
            return label
        }()
        view.addSubview(titleLabel)
        titleLabel.center = view.center
        
        if let color = Bundle.main.infoDictionary?["BACK_COLOR"]  {
            print(color)
            switch color as! String {
                case "red":
                view.backgroundColor = UIColor.red //or you can use hex colors here
                case "blue":
                view.backgroundColor = UIColor.blue
                case "gray":
                view.backgroundColor = UIColor.gray
                case "green":
                view.backgroundColor = UIColor.green
                case "yellow":
                view.backgroundColor = UIColor.yellow
                default :
                view.backgroundColor = UIColor.black
                }
        }
    }
}
