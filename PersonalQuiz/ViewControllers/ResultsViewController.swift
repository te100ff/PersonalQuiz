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
    private var userResult: AnimalType!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        defineUserType()
        showResult(type: userResult)
    }
    
    private func defineUserType() {

        var answerDictionary = [AnimalType: Int]()
        
        for answer in answersChoosen {
            answerDictionary[answer.type, default: 0] += 1
        }
        let result = answerDictionary.first { $0.value == answerDictionary.values.max() }
        if let x = result?.key {userResult = x}
        
    
    }
    
    
    
    private func showResult(type: AnimalType) {
        showResultLabel.text = "Вы - \(type.rawValue)"
        descritionLabel.text = type.definition
    }

}
