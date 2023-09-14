//
//  FirstTimeNewActivityViewController.swift
//  luna
//
//  Created by Cynara Costa on 12/09/23.
//  
//

import UIKit
import RxSwift
import RxCocoa

class FirstTimeNewActivityViewController: UIViewController {
    
    var presenter: ViewToPresenterFirstTimeNewActivityProtocol?
    
    private let firstTimeNewActivityView = NewActivityView()
    
    private var disposeBag = DisposeBag()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = nil
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = firstTimeNewActivityView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTimeLetsGoButtonTouchTrigger()
    }
    
    func firstTimeLetsGoButtonTouchTrigger() {
        firstTimeNewActivityView.button
            .rx
            .tap.bind {
                self.presenter?.userTappedLetsGoButton()
            }.disposed(by: disposeBag)
    }

}

extension FirstTimeNewActivityViewController: PresenterToViewFirstTimeNewActivityProtocol{
    // TODO: Implement View Output Methods
}




