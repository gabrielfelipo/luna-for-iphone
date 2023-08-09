//
//  ReferenceCard.swift
//  luna
//
//  Created by sml on 08/08/23.
//

import UIKit
import SnapKit

struct ReferenceTextViewModel {
    let number: String
    let reference: String
    let link: String
}


class ReferenceCard: UIView, AnyView {
    private let horizontalStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .top
        view.spacing = 2.su
        return view
    }()
    
    private let verticalStack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .top
        return view
    }()
    
    var number: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 17, color: .black, weight: .regular)
        label.text = "1."
        label.textAlignment = .left
        label.sizeToFit()
        label.draw(model)
        return label
    }()

    var reference: LunaText = {
        let label = LunaText()
        let model = LunaTextViewModel(size: 17, color: .black, weight: .regular)
        label.text = L10n.Constants.Content.Label.Home.Text.References.first
        label.numberOfLines = 0
        label.textAlignment = .left
        label.draw(model)
        return label
    }()
    
    private let linkComponent: Link = {
        let link = Link()
        return link
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(horizontalStack)
        horizontalStack.addArrangedSubview(number)
        horizontalStack.addArrangedSubview(verticalStack)
        verticalStack.addArrangedSubview(reference)
        verticalStack.addArrangedSubview(linkComponent)
    }
    
    func addConstraints() {
        horizontalStack.snp.makeConstraints {
            $0.trailing.leading.equalToSuperview()
        }
        
        self.snp.makeConstraints {
            $0.height.equalTo(horizontalStack.snp.height)
        }
        
        number.snp.makeConstraints {
            $0.width.equalTo(1.5.su)
        }
        
        linkComponent.snp.makeConstraints {
            $0.height.equalTo(3.5.su)
            $0.trailing.leading.equalToSuperview()
        }
    }

    func draw(_ model: ReferenceTextViewModel){
        number.text = model.number
        reference.text = model.reference
        linkComponent.draw(model.link)
    }
}