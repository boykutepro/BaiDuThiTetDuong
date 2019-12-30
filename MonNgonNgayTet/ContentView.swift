//
//  ContentView.swift
//  MonNgonNgayTet
//
//  Created by Thiện Tùng on 12/29/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ContentView: UIView {
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.5327918022, blue: 0.4031986287, alpha: 1)
        view.layer.cornerRadius = 15
        view.layer.shadowColor = #colorLiteral(red: 1, green: 0.3799027104, blue: 0.3558155566, alpha: 1)
        view.layer.shadowOffset = .zero
        view.layer.shadowOpacity = 1
        return view
    } ()
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        
        return image
    } ()
    
    let name: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = .boldSystemFont(ofSize: 22)
        name.textAlignment = .center
        name.textColor = .black
        
        return name
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentView)
        contentView.addSubview(image)
        contentView.addSubview(name)
        
        
    }
    
    func setup(NameImage: String, NameFood: String){
        //
        contentView.frame = CGRect(x: 0, y: 0, width: 170, height: 200)
        //
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -5).isActive = true
        image.heightAnchor.constraint(equalToConstant: 160).isActive = true
        image.image = UIImage(named: NameImage)
        //
        name.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 5).isActive = true
        name.leftAnchor.constraint(equalTo: image.leftAnchor, constant: 0).isActive = true
        name.rightAnchor.constraint(equalTo: image.rightAnchor, constant: 0).isActive = true
        name.heightAnchor.constraint(equalToConstant: 20).isActive = true
        name.text = NameFood
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
