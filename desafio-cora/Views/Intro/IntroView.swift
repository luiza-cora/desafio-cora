//
//  IntroView.swift
//  desafio-cora
//
//  Created by Cora on 29/06/22.
//

import UIKit

final class IntroView: UIView, ViewConfiguration {
    
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
        description.text = "Sua empresa livre burocracias e de taxas para gerar boletos, fazer transferências e pagamentos."
        description.font = .systemFont(ofSize: 16)
        description.textColor = .white
        return description
    }()
    
    private lazy var signInButton: UIButton = {
        let button: UIButton = UIButton.build(type: .primary)
        button.setTitle("Quero fazer parte", for: .normal)
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
        [personImage,coraLogo, title, subTitle, textDescription, signInButton].forEach(addSubview)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            personImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            personImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            personImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            personImage.heightAnchor.constraint(equalToConstant: 355),
            
            
            coraLogo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            coraLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
//            coraLogo.heightAnchor.constraint(equalToConstant: 90),
            
            title.topAnchor.constraint(equalTo: personImage.bottomAnchor, constant: 16),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor),
            subTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            subTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            textDescription.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 16),
            textDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            textDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            signInButton.topAnchor.constraint(equalTo: textDescription.bottomAnchor, constant: 24),
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
        ])
    }
    
}


