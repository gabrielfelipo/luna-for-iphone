//
//  ReferencesViewController.swift
//  luna
//
//  Created by gabrielfelipo on 08/08/23.
//

import UIKit

class ReferencesViewController: UIViewController {
    
    private let referencesView = ReferencesSheetView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = referencesView
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Referências"
        
    }
}
