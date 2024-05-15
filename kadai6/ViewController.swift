//
//  ViewController.swift
//  kadai6
//
//  Created by 八木佑樹 on 2024/04/13.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    // Label部品定義
    @IBOutlet weak var randomNum: UILabel!

    // スライダー部品定義
    @IBOutlet weak var sliderNum: UISlider!

    private var number = Int.random(in: 0...100)

    // 判定ボタンの挙動定義
    @IBAction func judge(_ sender: Any) {
        let firstLine: String
        if number == Int(sliderNum.value) {
            firstLine = "あたり！"
        } else {
            firstLine = "はずれ！"
        }

        let message = "\(firstLine)\nあなたの値は\(Int(sliderNum.value))です。"
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(
                title: "再挑戦",
                style: .default,
                handler: { [weak self] _ in
                    self?.reset()
                }
            )
        )
        self.present(alert, animated: true, completion: nil)
    }

    private func reset() {
        number = Int.random(in: 0...100)
        randomNum.text = String(number)
    }
}
