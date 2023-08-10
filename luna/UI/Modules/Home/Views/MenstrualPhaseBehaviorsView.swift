//
//  HomeCardsView.swift
//  luna
//
//  Created by Cynara Costa on 02/08/23.
//

import UIKit

class SeeMoreCard: UIView, AnyView {
    
    private let line = SegmentedLine()
    
//    private let stack: UIStackView = {
//        let view = UIStackView()
//        view.axis = .horizontal
//        view.alignment = .top
//        return view
//    }()
    
    private(set) var seeMoreButton: LunaButton = {
        let button = LunaButton()
        button.draw(style: .seeMore)
        button.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(line)
        addSubview(seeMoreButton)
        seeMoreButton.backgroundColor = .green
//        addSubview(stack)
//        stack.addArrangedSubview(seeMoreButton)
    }
    
    func addConstraints() {
        
        seeMoreButton.snp.makeConstraints{
            $0.leading.equalTo(line.snp.trailing)
//            $0.bottom.equalToSuperview().offset(0.5)
        }
        
//        stack.snp.makeConstraints {
//            $0.leading.equalTo(line.snp.trailing).offset(2.su)
//            $0.trailing.equalToSuperview()
//            $0.top.equalTo(line.snp.top)
//        }
//
        line.backgroundColor = .yellow
//        stack.backgroundColor = .brown
        
        line.snp.makeConstraints {
            $0.top.height.equalToSuperview()
            $0.leading.equalToSuperview().offset(0.5.su)
            $0.width.equalTo(14)
            $0.height.equalTo(seeMoreButton).multipliedBy(1.4)
        }
    }
    
    func addAdditionalConfiguration() {
        
    }
}


class MenstrualPhaseBehaviorsView: UIView, AnyView {
    
    let whatIsCardInformation: CycleDetailsCard = {
        let container = CycleDetailsCard()
        container.title.text = "O que é?"
        return container
    }()
    
    let howAreYouCardInformation: CycleDetailsCard = {
        let container = CycleDetailsCard()
        container.title.text = "Como você está?"
        return container
    }()
    
    let betterAvoidCardInformation: CycleDetailsCard = {
        let container = CycleDetailsCard()
        container.title.text = "Melhor evitar, hein!"
        return container
    }()
    
    let wannaHelpCardInformation: CycleDetailsCard = {
        let container = CycleDetailsCard()
        container.title.text = "Quer uma ajuda?"
        return container
    }()
    
    let behindSheetsCardInformation: CycleDetailsCard = {
        let container = CycleDetailsCard()
        container.title.text = "Por trás dos panos"
        container.backgroundColor = .red
        return container
    }()
    
    let stack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .fill
        return view
    }()
    
    private let seeMoreCard = SeeMoreCard()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(stack)
    
        stack.addArrangedSubview(whatIsCardInformation)
        stack.addArrangedSubview(howAreYouCardInformation)
        stack.addArrangedSubview(betterAvoidCardInformation)
        stack.addArrangedSubview(wannaHelpCardInformation)
        stack.addArrangedSubview(behindSheetsCardInformation)
        stack.addArrangedSubview(seeMoreCard)
        
        
    }
    
    func addConstraints() {
        stack.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    
    func draw(_ model: CyclePhaseTextViewModel){
        whatIsCardInformation.subtitle.text = model.whatIsDescription
        whatIsCardInformation.line.ball.image = model.colorBall.image
        
        howAreYouCardInformation.subtitle.text = model.howAreYouDescription
        howAreYouCardInformation.line.ball.image = model.colorBall.image
        
        betterAvoidCardInformation.subtitle.text = model.avoidDescription
        betterAvoidCardInformation.line.ball.image = model.colorBall.image
        
        wannaHelpCardInformation.subtitle.text = model.helpDescription
        wannaHelpCardInformation.line.ball.image = model.colorBall.image
        
        behindSheetsCardInformation.subtitle.text = model.behindSheets
        behindSheetsCardInformation.line.ball.image = model.colorBall.image
    }
    
}


