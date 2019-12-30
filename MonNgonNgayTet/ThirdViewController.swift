//
//  ThirdViewController.swift
//  MonNgonNgayTet
//
//  Created by Thiện Tùng on 12/28/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

@IBDesignable

class ThirdViewController: UIViewController {
    
    let imageTop: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "thitkho")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    let image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "anh1")
       // image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    let image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "anh2")
       // image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        
        return image
    } ()
    
    let contentView: UIScrollView = {
        let view = UIScrollView()
        //view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.bounces = false
        
        return view
    } ()
    
    let nameFood: UILabel = {
        let name = UILabel()
        name.text = "Thịt ba chỉ kho tàu"
        name.font = .boldSystemFont(ofSize: 24)
        name.textColor = .black
        name.textAlignment = .left
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    } ()
    let subTitle: UILabel = {
        let sub = UILabel()
        sub.translatesAutoresizingMaskIntoConstraints = false
        sub.numberOfLines = 3
        sub.text = """
        Món Thịt Kho Tàu (thịt kho trứng) là món ăn
        truyền thống, phổ biển trong những mâm cơm
        Tết người Việt...
        """
        sub.textAlignment = .left
        sub.textColor = .lightGray
    
        return sub
    } ()
    let nguyenlieu: UILabel = {
        let name = UILabel()
        name.text = "NGUYÊN LIỆU"
        name.font = .systemFont(ofSize: 24)
        name.textColor = .black
        name.textAlignment = .left
        name.translatesAutoresizingMaskIntoConstraints = false
           
        return name
    } ()
    let background: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        
        return view
    } ()
    
    let nhap: UIView = {
        let nhap = UIView()
        nhap.backgroundColor = .clear
        nhap.translatesAutoresizingMaskIntoConstraints = false
        
        return nhap
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.addSubview(imageTop)
        view.addSubview(contentView)
        contentView.addSubview(nameFood)
        contentView.addSubview(subTitle)
        contentView.addSubview(background)
        contentView.addSubview(image1)
        contentView.addSubview(nguyenlieu)
        contentView.addSubview(image2)
        contentView.addSubview(nhap)
        
        setup()
    }
    
    func setup() {
        //MARK: Image
        imageTop.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageTop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        imageTop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        imageTop.heightAnchor.constraint(equalToConstant: 280).isActive = true
        //MARK: ContentView
        contentView.frame = CGRect(x: 0, y: 280, width: UIScreen.main.bounds.width, height: 896-280)
//        contentView.topAnchor.constraint(equalTo: imageTop.bottomAnchor, constant: 0).isActive = true
//        contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        contentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        //
        nameFood.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        nameFood.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        nameFood.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        nameFood.heightAnchor.constraint(equalToConstant: 45).isActive = true
        //
        subTitle.topAnchor.constraint(equalTo: nameFood.bottomAnchor, constant: 0).isActive = true
        subTitle.leftAnchor.constraint(equalTo: nameFood.leftAnchor, constant: 0).isActive = true
        subTitle.rightAnchor.constraint(equalTo: nameFood.rightAnchor, constant: 0).isActive = true
        subTitle.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        //
        background.topAnchor.constraint(equalTo: nguyenlieu.topAnchor, constant: 0).isActive = true
        background.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0).isActive = true
        background.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        background.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //
        nguyenlieu.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10).isActive = true
        nguyenlieu.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        nguyenlieu.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        nguyenlieu.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //
        
        image1.frame = CGRect(x: 10, y: contentView.bounds.minY + 220, width: UIScreen.main.bounds.width-40, height: 300)
//        image1.topAnchor.constraint(equalTo: nguyenlieu.bottomAnchor, constant: 10).isActive = true
//        image1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
//        image1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
//        image1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        image2.frame = CGRect(x: 8.5, y: image1.frame.maxY + 38, width: UIScreen.main.bounds.width-40, height: 300)
//        image2.topAnchor.constraint(equalTo: image1.bottomAnchor, constant: 15).isActive = true
//        image2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15).isActive = true
//        image2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true
//        image2.heightAnchor.constraint(equalToConstant: 300).isActive = true
        //
      
        nhap.topAnchor.constraint(equalTo: image2.bottomAnchor, constant: 10).isActive = true
        nhap.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nhap.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0).isActive = true
        nhap.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        
    }


}
