//
//  OnboardingPageControlPresenter.swift
//  luna
//
//  Created by alexdamascena on 21/07/23.
//  
//

import Foundation

class OnboardingPageControlPresenter: ViewToPresenterOnboardingPageControlProtocol {


    var view: PresenterToViewOnboardingPageControlProtocol?
    var router: PresenterToRouterOnboardingPageControlProtocol?
    
    func userTappedContinueButton() {
        
        guard let pageViewController = view else { return }
        
        DispatchQueue.main.async {
            self.router?.pushHome(on: pageViewController)
        }
    }
    
    
    func completeOnboardFlowDot(at currentPage: Int) {
        view?.completeOnboardFlowDot(at: currentPage)
    }
    
    func hideContinueAndBackButton() {
        view?.hideContinueAndBackButton()
        
    }
    
    func showLastContinueButton() {
        view?.showLastContinueButton()
    }
}
