//
//  LandingPageView.swift
//  luna
//
//  Created by gabrielfelipo on 21/07/23.
//

import UIKit
import SnapKit
import RxSwift



class LandingPageView: UIView, AnyView {
    private var disposeBag = DisposeBag()
    
    private let background: UIView = {
        let view = UIView()
        return view
    }()
    
    private let backgroundImage: UIImageView = {
        let view = UIImageView(image: Asset.landingPageBackgroundImage.image)
        view.contentMode = .left
        return view
    }()
    
    private let stack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .fill
        view.spacing = 1.su
        return view
    }()
    
    private let title: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 39,
                                      color: .black,
                                      weight: .bold)
        
        label.text = L10n.Constants.Content.Label.appName
        label.numberOfLines = 0
        label.textAlignment = .left
        
        label.draw(model)
        return label
    }()
    
    private let landingPageDescription: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 28,
                                      color: .black,
                                      weight: .regular)
        
        label.text = L10n.Constants.Content.Label.landingPageDescription
        label.numberOfLines = 0
        label.textAlignment = .left
        
        label.draw(model)
        return label
    }()
    
    private(set) var startButton: LunaButton = {
        let button = LunaButton()
        button.draw(style: .initial)
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
        addSubview(background)
        addSubview(backgroundImage)
        addSubview(stack)
        stack.addArrangedSubview(title)
        stack.addArrangedSubview(landingPageDescription)
        addSubview(startButton)
        
    }
    
    func addConstraints() {
        
<<<<<<< HEAD
        background.snp.makeConstraints{
=======
        background.snp.makeConstraints {
>>>>>>> main
            $0.edges.equalToSuperview()
        }
        
        backgroundImage.snp.makeConstraints {
            $0.top.trailing.equalToSuperview()
            $0.bottom.equalTo(stack.snp.top)
        }
        
        stack.snp.makeConstraints {
            $0.bottom.equalTo(startButton.snp.top).offset(-7.su)
            $0.leading.equalToSuperview().offset(3.su)
        }
        
        title.snp.makeConstraints {
            $0.height.equalTo(6.su)
        }
        
        landingPageDescription.snp.makeConstraints {
            $0.height.equalTo(5.su)
        }
            
        startButton.snp.makeConstraints {
            $0.trailing.leading.equalToSuperview().inset(3.su)
            $0.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-2.su)
            $0.height.equalTo(50)
        }
    }
    
    
    func addAdditionalConfiguration() {
        background.backgroundColor = .white
    }
}
