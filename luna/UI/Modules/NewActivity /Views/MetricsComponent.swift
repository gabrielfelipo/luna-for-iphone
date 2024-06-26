//
//  MetricsComponent.swift
//  luna
//
//  Created by Cynara Costa on 14/09/23.
//

import UIKit
import SnapKit

class MetricsComponent: UIStackView, AnyView {
    
    private let stressTitle: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 13, color: Asset.gray400.color, weight: .regular)
        label.addLineHeight(of: 16)
        label.text = L10n.Constants.Content.Label.NewActivity.AddNewActivity.MetricsComponent.stressTitle
        label.numberOfLines = 0
        label.textAlignment = .left
        label.draw(model)
        return label
    }()
    
    private(set) var stressCollectionView = NewActivityCollectionView(with: "stress")
    
    private let divStress = Div()
    
    private let sociabilityTitle: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 13, color: Asset.gray400.color, weight: .regular)
        label.addLineHeight(of: 16)
        label.text = L10n.Constants.Content.Label.NewActivity.AddNewActivity.MetricsComponent.socialTitle
        label.numberOfLines = 0
        label.textAlignment = .left
        label.draw(model)
        return label
    }()
    
    private(set) var sociabilityCollectionView = NewActivityCollectionView(with: "sociability")
    
    private let divSociability = Div()
    
    private let fisicsTitle: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 13, color: Asset.gray400.color, weight: .regular)
        label.addLineHeight(of: 16)
        label.text = L10n.Constants.Content.Label.NewActivity.AddNewActivity.MetricsComponent.fisicsTitle
        label.numberOfLines = 0
        label.textAlignment = .left
        label.draw(model)
        return label
    }()
    
    private(set) var fisicsCollectionView = NewActivityCollectionView(with: "fisics")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(stressTitle)
        addSubview(stressCollectionView)
        addSubview(divStress)
        addSubview(sociabilityTitle)
        addSubview(sociabilityCollectionView)
        addSubview(divSociability)
        addSubview(fisicsTitle)
        addSubview(fisicsCollectionView)
    }
    
    func addConstraints() {
        
        stressTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(2.su)
            $0.top.equalToSuperview().offset(12)
        }
        
        stressCollectionView.snp.makeConstraints {
            $0.top.equalTo(stressTitle.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(2.su)
            $0.height.equalTo(6.su)
        }
        
        divStress.snp.makeConstraints {
            $0.top.equalTo(stressCollectionView.snp.bottom).offset(20)
            $0.leading.trailing.equalToSuperview().inset(2.su)
            $0.height.equalTo(1)
        }
        
        sociabilityTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(2.su)
            $0.top.equalTo(divStress.snp.bottom).offset(24)
        }
        
        sociabilityCollectionView.snp.makeConstraints {
            $0.top.equalTo(sociabilityTitle.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(2.su)
            $0.height.equalTo(6.su)
        }
        
        divSociability.snp.makeConstraints {
            $0.top.equalTo(sociabilityTitle.snp.bottom).offset(80)
            $0.leading.trailing.equalToSuperview().inset(2.su)
            $0.height.equalTo(1)
        }
        
        fisicsTitle.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(2.su)
            $0.top.equalTo(divSociability.snp.bottom).offset(24)
        }
        
        fisicsCollectionView.snp.makeConstraints {
            $0.top.equalTo(fisicsTitle.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(2.su)
            $0.height.equalTo(6.su)
        }
        
    }
    
    func addAdditionalConfiguration() {
        backgroundColor = Asset.gray50.color
        layer.cornerRadius = 1.su
    }
    
}

