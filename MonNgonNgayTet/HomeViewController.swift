//
//  HomeViewController.swift
//  MonNgonNgayTet
//
//  Created by Thiện Tùng on 12/28/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let background: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "background4")
        image.backgroundColor = #colorLiteral(red: 0.4508594513, green: 0.8633706358, blue: 0.8706889573, alpha: 1)
        
        return image
    }()
    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1, green: 0.2588677553, blue: 0.00192462087, alpha: 1)
        label.font = UIFont(name: "NotoSerif-BoldItalic", size: 34)
        label.text = "MÓN NGON MỖI NGÀY"
        label.backgroundColor = .clear
        
        return label
    } ()
    
    let label: UILabel = {
        let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Chọn món ăn bạn muốn làm"
        label.textAlignment = .left
        label.font = UIFont(name: "DancingScript-SemiBold", size: 26)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        return label
        
    } ()
    
    var contentView: UIScrollView!
    
    var images: [String] = []
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView = UIScrollView()
        
        view.addSubview(background)
        view.addSubview(topLabel)
        view.addSubview(label)
        view.addSubview(contentView)
        
        setupLayout()
        data()
        setupScr()
        
        
        
    }
    func setupScr(){
        for i in 0..<8 {
            let view = ContentView()
            view.frame = CGRect(x: 25, y: CGFloat(i) * 215, width: 170, height: 200)
            view.setup(NameImage: images[i], NameFood: names[i])
            contentView.addSubview(view)
            view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
        }
        
        for i in 8..<16 {
            let view = ContentView()
            view.frame = CGRect(x: 225, y: CGFloat(i-8) * 215, width: 170, height: 200)
            view.setup(NameImage: images[i], NameFood: names[i])
            contentView.addSubview(view)
            
        }
        contentView.contentSize = CGSize(width: 415, height: 1720)
        contentView.bounces = false
        
    }
    @objc func tap(){
        let thirdVC = ThirdViewController()
        thirdVC.modalPresentationStyle = .fullScreen
        present(thirdVC, animated: true, completion: nil)
    }
    
    func data(){
        images = ["thitkho", "banhchung", "banhtom", "boham", "bokho", "cakho", "mam", "mut", "thitkho", "banhchung", "banhtom", "boham", "bokho", "cakho", "mam", "mut"]
        names = ["Thịt kho", "Bánh chưng", "Bánh tôm", "Bò hầm", "Bò khô", "Cá kho", "Nước chấm", "Mứt ngọt", "Thịt kho", "Bánh chưng", "Bánh tôm", "Bò hầm", "Bò khô", "Cá kho", "Nước chấm", "Mứt ngọt"]
    }
    
    func setupLayout(){
        background.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        background.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        background.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        background.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //Title
        topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        topLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        topLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        //Label
        label.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 15).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 30).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        //contentview
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        contentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
}
