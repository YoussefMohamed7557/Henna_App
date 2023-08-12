//
//  OnBoardingViewController.swift
//  Henna-App
//
//  Created by Youssef Mohamed on 07/08/2023.
//

import UIKit

class OnBoardingViewController: UIViewController {
    var currentIndex = 1
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textAndPageControllerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playTimer()
    }
    @IBAction func getStartedAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateViewController(withIdentifier: "AuthintecationViewController") as! AuthintecationViewController
        login.modalPresentationStyle = .fullScreen
        login.modalTransitionStyle = .crossDissolve
        present(login, animated: true)
    }
    
    @objc func getCurrentIndex(){
        if currentIndex > 3{
            currentIndex = 1
        }else{
            currentIndex += 1
        }
        switch currentIndex {
        case 1:
            backgroundImage.image = UIImage(named: "image1")
            textAndPageControllerImage.image = UIImage(named: "onboarding1")
        case 2:
            backgroundImage.image = UIImage(named: "image2")
            textAndPageControllerImage.image = UIImage(named: "onboarding2")
        case 3:
            backgroundImage.image = UIImage(named: "image3")
            textAndPageControllerImage.image = UIImage(named: "onboarding3")
        default:
            backgroundImage.image = UIImage(named: "image1")
            textAndPageControllerImage.image = UIImage(named: "onboarding1")
        }
    }
    func playTimer(){
    var timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.getCurrentIndex), userInfo: nil, repeats: true)
    }
}
//func setWhiteBorder() {
//    getStartedButtonOutlet.layer.borderWidth = 6
//    getStartedButtonOutlet.layer.borderColor = UIColor.white.cgColor
//}
