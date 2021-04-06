//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 05.04.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответсвии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
    
    @IBOutlet weak var showResultLabel: UILabel!
    @IBOutlet weak var descritionLabel: UILabel!
    
    
    var answersChoosen: [Answer]!
   // private var

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    private func defineUserType() -> AnimalType {
        for answer in answersChoosen {
            switch answer.type {
            
            case .dog:
                <#code#>
            case .cat:
                <#code#>
            case .rabbit:
                <#code#>
            case .turtle:
                <#code#>
            }
        }
    }
    
    private func showResult(type: AnimalType) {
        showResultLabel.text = "Вы - \(type.rawValue)"
        descritionLabel.text = type.definition
    }

}
