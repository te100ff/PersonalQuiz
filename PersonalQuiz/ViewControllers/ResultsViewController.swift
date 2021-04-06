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

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        defineUserType()
    }
    
    private func defineUserType() {
        
        var answersSum = [AnimalType: Int]()
        
        for answer in answersChoosen {
            answersSum[answer.type, default: 0] += 1
        }
        let userResult = answersSum.first { $0.value == answersSum.values.max() }
        if let type = userResult?.key { showResult(type: type)}
    }
    
    private func showResult(type: AnimalType) {
        showResultLabel.text = "Вы - \(type.rawValue)"
        descritionLabel.text = type.definition
    }
    
}
