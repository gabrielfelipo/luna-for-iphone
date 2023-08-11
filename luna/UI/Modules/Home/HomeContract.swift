//
//  HomeContract.swift
//  luna
//
//  Created by alexdamascena on 27/07/23.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewHomeProtocol {
    
    func userAllowedAccessCalendar()
    func userDeniedAccessCalendar()
    
    func changeSelectedCell(selectedCell: CalendarCollectionViewCell) 
    func moveCalendarCollection(toXAxis: CGFloat)
    func updateView(_ center: CalendarCollectionViewCell)
    
    func load(collectionDataSource: [CyclePhaseViewModel])
    func loadCalendarToCollection(date: Date)
    
    func moveTo(_ month: Date)
    func showFeedbackRegisterMenstruation()

}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterHomeProtocol {
    
    var view: PresenterToViewHomeProtocol? { get set }
    var interactor: PresenterToInteractorHomeProtocol? { get set }
    var router: PresenterToRouterHomeProtocol? { get set }
    
    func checkCalendarPermission()
    func loadUserCalendar()
    func loadCalendarToCollection()
    func insertMenstruation(selectedDate: Date) -> Bool 
        
    func userSelect(_ cell: CalendarCollectionViewCell?,
                    center: CalendarCollectionViewCell?,
                    andMoveCenter: CGFloat?)
    
    func moveTo(_ centerCell: CalendarCollectionViewCell?)
    func moveTo(_ month: Date)
    func userOpenDeviceSettings()
    
    func showCyclePhaseReferencesSheet()
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorHomeProtocol {
    
    var presenter: InteractorToPresenterHomeProtocol? { get set }
    
    func checkIfUserGivePermission(completion: @escaping PermissionResponse)
    func loadPhasesToUserCalendar()
    func loadCalendarToCollection() -> [CyclePhaseViewModel]
    func insertedMenstruationToCollection(selectedDate: Date) -> Bool
    
    func openDeviceSettings()
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterHomeProtocol {
    
    func accessAllowed()
    func accessDenied()
    func showFeedbackRegisterMenstruation()
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterHomeProtocol {
    func pushReferencesSheet(on view: PresenterToViewHomeProtocol)
}
