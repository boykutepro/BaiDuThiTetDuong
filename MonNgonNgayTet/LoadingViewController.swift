//
//  LoadingViewController.swift
//  MonNgonNgayTet
//
//  Created by Thiện Tùng on 12/28/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    var timer: Timer!
    var current: CGFloat = 0
    var limit: Float = 0
    
    let circleLoad: CircleView = {
        let view = CircleView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.clipsToBounds = true
        view.backgroundColor = .clear
        
        view.isHidden = true
        
        return view
    }()
    
    let background:UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: "background1")
        background.contentMode = .scaleAspectFill
        background.translatesAutoresizingMaskIntoConstraints = false
        background.alpha = 0.9
        
        return background
    } ()
    
    let topTitle: UILabel = {
        let label = UILabel()
        label.text = "HAPPY NEW YEAR"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.orange
        label.font = UIFont(name: "DancingScript-SemiBold", size: 42)
        
        return label
    } ()
    
    let year: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "2020")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    } ()
    let fbLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.09913571501, green: 0.1597997774, blue: 0.3629776554, alpha: 1)
        button.setTitle("        Connect with Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.textAlignment = .center
        
        return button
    }()
    let iconFb: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "iconFB")
        icon.contentMode = .scaleAspectFit
        
        return icon
    } ()
    
    let skipButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Bỏ qua đăng nhập", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 20
        button.layer.borderColor = UIColor.black.cgColor
        button.titleLabel?.textAlignment = .center
        
        return button
    } ()
    
    let hiddenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.isHidden = true
        
        return view
    } ()
    let hiddenFB: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hiện không khả dụng"
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
        label.textColor = .black
        
        return label
    } ()
    
    let hiddenBut: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .lightGray
        
        return button
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(background)
        view.addSubview(topTitle)
        view.addSubview(year)
        view.addSubview(fbLogin)
        fbLogin.addSubview(iconFb)
        view.addSubview(skipButton)
        view.addSubview(circleLoad)
        view.addSubview(hiddenView)
        hiddenView.addSubview(hiddenFB)
        hiddenView.addSubview(hiddenBut)
        setup()
        
        fbLogin.addTarget(self, action: #selector(fbLog), for: .touchUpInside)
        skipButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        hiddenBut.addTarget(self, action: #selector(back), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func back(){
        background.alpha = 1
        topTitle.alpha = 1
        year.alpha = 1
        fbLogin.alpha = 1
        iconFb.alpha = 1
        skipButton.alpha = 1
        year.alpha = 1
        hiddenView.isHidden = true
        
    }
    
    @objc func fbLog(){
        circleLoad.isHidden = false
        background.alpha = 0.7
        topTitle.alpha = 0.7
        year.alpha = 0.7
        fbLogin.alpha = 0.7
        iconFb.alpha = 0.7
        skipButton.alpha = 0.7
        year.alpha = 0.3
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(startAnimation2), userInfo: nil, repeats: true)
        
    }
    @objc func startAnimation2() {
        limit += 0.01
        circleLoad.masterSlider = current
        circleLoad.setNeedsDisplay()
        current += 0.01
        if limit > 1{
            circleLoad.isHidden = true
            timer.invalidate()
            hiddenView.isHidden = false
            limit = 0
        }
    }
    
    @objc func login(){
        
        circleLoad.isHidden = false
        background.alpha = 0.7
        topTitle.alpha = 0.7
        year.alpha = 0.7
        fbLogin.alpha = 0.7
        iconFb.alpha = 0.7
        skipButton.alpha = 0.7
        year.alpha = 0.3
        
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(startAnimation1), userInfo: nil, repeats: true)
    }
    
    @objc func startAnimation1() {
        limit += 0.01
        
        circleLoad.masterSlider = current
        circleLoad.setNeedsDisplay()
        current += 0.01
        if limit > 1.2{
            timer.invalidate()
            let secondVC = HomeViewController()
            let navigation = UINavigationController(rootViewController: secondVC)
            navigation.modalPresentationStyle = .fullScreen
            navigation.isNavigationBarHidden = true
            present(navigation, animated: true, completion: nil)
            limit = 0
        }
        
        
    }
    func setup(){
        
        //MARK: Background
        background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        background.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        background.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        background.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //TITLE
        topTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        topTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
        //Year
        year.topAnchor.constraint(equalTo: topTitle.bottomAnchor, constant: 20).isActive = true
        year.centerXAnchor.constraint(equalTo: topTitle.centerXAnchor, constant: 0).isActive = true
        year.heightAnchor.constraint(equalToConstant: 250).isActive = true
        year.widthAnchor.constraint(equalToConstant: 250).isActive = true
        //MARK: BUTTON
        //FB Log
        fbLogin.topAnchor.constraint(equalTo: year.bottomAnchor, constant: 145).isActive = true
        fbLogin.leftAnchor.constraint(equalTo: background.leftAnchor, constant: 32).isActive = true
        fbLogin.rightAnchor.constraint(equalTo: background.rightAnchor, constant:
            -32).isActive = true
        fbLogin.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        fbLogin.addSubview(iconFb)
        iconFb.topAnchor.constraint(equalTo: fbLogin.topAnchor, constant: 5).isActive = true
        iconFb.leftAnchor.constraint(equalTo: fbLogin.leftAnchor, constant: 10).isActive = true
        iconFb.bottomAnchor.constraint(equalTo: fbLogin.bottomAnchor, constant: -5).isActive = true
        iconFb.heightAnchor.constraint(equalTo: iconFb.widthAnchor, multiplier: 1).isActive = true
        //Skip Button
        
        skipButton.topAnchor.constraint(equalTo: fbLogin.bottomAnchor, constant: 20).isActive = true
        skipButton.leftAnchor.constraint(equalTo: fbLogin.leftAnchor, constant: 0).isActive = true
        skipButton.rightAnchor.constraint(equalTo: fbLogin.rightAnchor, constant:
            -0).isActive = true
        skipButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        //

        circleLoad.widthAnchor.constraint(equalToConstant: 125).isActive = true
        circleLoad.heightAnchor.constraint(equalToConstant: 125).isActive = true
        circleLoad.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        circleLoad.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        //
        
        hiddenView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        hiddenView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        hiddenView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        hiddenView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        hiddenView.clipsToBounds = true
        //
        hiddenFB.widthAnchor.constraint(equalToConstant: 230).isActive = true
        hiddenFB.heightAnchor.constraint(equalToConstant: 50).isActive = true
        hiddenFB.centerXAnchor.constraint(equalTo: hiddenView.centerXAnchor, constant: 0).isActive = true
        hiddenFB.centerYAnchor.constraint(equalTo: hiddenView.centerYAnchor, constant: -20).isActive = true
        //
        hiddenBut.widthAnchor.constraint(equalToConstant: 250).isActive = true
        hiddenBut.heightAnchor.constraint(equalToConstant: 40).isActive = true
        hiddenBut.centerXAnchor.constraint(equalTo: hiddenView.centerXAnchor, constant: 0).isActive = true
        hiddenBut.centerYAnchor.constraint(equalTo: hiddenView.centerYAnchor, constant: +30).isActive = true
        
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
