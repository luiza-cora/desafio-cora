//
//  IntroView.swift
//  desafio-cora
//
//  Created by Cora on 29/06/22.
//

import UIKit

final class IntroView: UIView, ViewConfiguration {
    
    private lazy var rounder: CAShapeLayer = {
        
        
        let roundedRect = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 256, height: 256), cornerRadius: 50)
        let circle = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 256, height: 256))
//        circle.translatesAutoresizingMaskIntoConstraints = false
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circle.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 11.0
         // link: https://stackoverflow.com/questions/61631723/how-can-i-add-a-uibezierpath-to-a-uiview-that-uses-auto-layout
        return shapeLayer
//        return circle
    }()
    
    
    private lazy var coraLogo: UIImageView = {
       let logo  = UIImageView()
        logo.image = UIImage(named: "cora-logo")
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    private lazy var personImage: UIImageView = {
        let personImage = UIImageView()
        personImage.image = UIImage(named: "person-image")
        personImage.translatesAutoresizingMaskIntoConstraints = false
        return personImage
    }()
    
    private lazy var title: UILabel = {
        var title: UILabel = UILabel.build()
        title.text = "Conta Digital PJ"
        title.font = UIFont(name: "Montserrat-Bold", size: 28)
        title.textColor = .white
        return title
    }()
    
    private lazy var subTitle: UILabel = {
        var subTitle = UILabel.build()
        subTitle.text = "Poderosamente simples"
        subTitle.font = .systemFont(ofSize: 28)
        subTitle.textColor = .white
        return subTitle
    }()
    
    private lazy var textDescription: UILabel = {
        var description = UILabel.build()
        let text = NSMutableAttributedString(string: "Sua empresa livre burocracias e de taxas para gerar boletos, fazer transferências e pagamentos.")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 8
        
        text.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, text.length))
        description.attributedText = text
        
        description.font = .systemFont(ofSize: 16)
        description.textColor = .white
        return description
    }()
    
    private lazy var buttonsStackView: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var signInButton: UIButton = {
        let button: UIButton = UIButton.build(type: .primary)
        button.setTitle("Quero fazer parte!", for: .normal)
        return button
    }()
    
    private lazy var loginButton: UIButton = {
        let button: UIButton = UIButton.build(type: .secondary)
        button.setTitle("Já sou cliente", for: .normal)
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configViews() {
        backgroundColor = DSColors.primary.color
    }
    
    func buildViews() {
        [personImage,coraLogo, title, subTitle, textDescription,buttonsStackView].forEach(addSubview)
        [signInButton, loginButton].forEach(buttonsStackView.addArrangedSubview)
        layer.addSublayer(rounder)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            personImage.topAnchor.constraint(equalTo: topAnchor),
            personImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            personImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            personImage.heightAnchor.constraint(equalToConstant: 355),
            
            coraLogo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            coraLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            title.topAnchor.constraint(equalTo: personImage.bottomAnchor, constant: 16),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            subTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            textDescription.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 16),
            textDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            textDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            
            buttonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            buttonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            buttonsStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
