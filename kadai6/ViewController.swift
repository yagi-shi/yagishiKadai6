//
//  ViewController.swift
//  kadai6
//
//  Created by 八木佑樹 on 2024/04/13.
//

import UIKit

class ViewController: UIViewController {
    // Labelに乱数を表示
    override func viewDidLoad() {
         loadView()
         super.viewDidLoad()
         var label = String(Int.random(in: 0..<101))
         randomNum.text = String(label)
     }
    
    // Label部品定義
    @IBOutlet weak var randomNum: UILabel!
    
    // スライダー部品定義
    @IBOutlet weak var sliderNum: UISlider!
    
    // 判定ボタンの挙動定義
    @IBAction func judge(_ sender: Any) {
        var sliderValue = String(Int(sliderNum.value))
        
        if randomNum.text == sliderValue {
            let alert = UIAlertController(title: "結果", message: "あたり！\nあなたの値は\(sliderValue)です。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: { _ in self.viewDidLoad()
            }))
            self.present(alert, animated: true, completion: nil)
        }else if randomNum.text != sliderValue{
            let alert = UIAlertController(title: "結果", message: "はずれ！\nあなたの値は\(sliderValue)です。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: { _ in self.viewDidLoad()
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
