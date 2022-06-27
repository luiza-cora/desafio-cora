//
//  ViewConfiguration.swift
//  desafio-cora
//
//  Created by Cora on 27/06/22.
//


protocol ViewConfiguration: AnyObject {
    func setupViews()
    func configViews()
    func buildViews()
    func setupConstraints() }

extension ViewConfiguration {
    func setupViews() {
        self.configViews()
        self.buildViews()
        self.setupConstraints()
    }
}
