//
//  CalendarCollectionViewDataSource.swift
//  luna
//
//  Created by alexdamascena on 01/08/23.
//

import Foundation
import RxSwift

protocol CalendarCollectionViewDataSource {
    
//    var data: [CyclePhaseViewModel] { get }
    
    var data: PublishSubject<[CyclePhaseViewModel]> { get }
    var lastCell: CalendarCollectionViewCell? { get set }
    var cyclePhase: PublishSubject<CyclePhase> { get }
    var month: PublishSubject<Date> { get }
}
