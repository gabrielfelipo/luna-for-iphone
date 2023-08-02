//
//  HomeCardsView.swift
//  luna
//
//  Created by Cynara Costa on 02/08/23.
//

import UIKit


class HomeCardView<T: UIView>: UIView, AnyView {
    
    private let cards = [CardHomeInformation(), CardHomeInformation(), CardHomeInformation(), CardHomeInformation()]

    
    private let stack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .fill
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        cards.forEach{ card in
            stack.addArrangedSubview(card)
        }
        
        addSubview(stack)
        
    }
    
    func addConstraints() {
        stack.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
}

