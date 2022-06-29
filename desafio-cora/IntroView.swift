//
//  IntroView.swift
//  desafio-cora
//
//  Created by Cora on 29/06/22.
//

import UIKit

final class IntroView: UIView, ViewConfiguration {
    
    private lazy var title: UILabel = {
        var title: UILabel = UILabel()
        title.text = "Conta Digital PJ"
        title.font = .boldSystemFont(ofSize: 28)
        title.textColor = .white
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private lazy var subTitle: UILabel = {
        var subTitle: UILabel = UILabel()
        subTitle.text = "Poderosamente simples"
        subTitle.font = .systemFont(ofSize: 28)
        subTitle.textColor = .white
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        return subTitle
    }()
    
    private lazy var textDescription: UILabel = {
        var description: UILabel = UILabel()
        description.text = "Sua empresa livre burocracias e de taxas para gerar boletos, fazer transferências e pagamentos."
        description.font = .systemFont(ofSize: 28)
        description.textColor = .white
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    private lazy var signInButton: UIButton = {
        var button: UIButton = UIButton()
        button.setTitle("Quero fazer parte", for: .normal)
        button.backgroundColor = DSColors.primary.color
        button.translatesAutoresizingMaskIntoConstraints = false
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
        [title, subTitle, textDescription, signInButton].forEach(addSubview)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: 30)
        ])
    }
    
    
    
    
}


