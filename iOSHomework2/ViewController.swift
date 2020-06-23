//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var membersNamesArray  : [String] = []
    var member = ["janna", "alyaa", "ghadeer"]
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter  قم
        
        
        let functionCall = secretNameLetter(members: membersNamesArray)
               
        // MARK: -   النهاية
    
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
       let functionCall = secretNameEmoji(array:membersNamesArray)
              
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    
    func secretNameLetter(members: [String]) -> String{
        var secret = ""
    
        for member in members{
            secret += member.prefix(1).uppercased()
        }
    
      return secret
    }
        
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله

    func secretNameEmoji(array: [String]) -> String{
        var secret: String = ""
    
        let letter = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
       let emoji = ["❤️", "💛", "📕", "🐝", "🦋", "🐹", "🔆", "🦠", "🎀", "♍️", "💙", "💚", " 🤍", "🥺", "🤪", " 😓", "😬", "🥶", "🤯", "🥱", "😎", "🥳", "😏", "🙄", "👏", "🎊"]

        for member in array{
            let prefix = String(member).prefix(1)
            for i in 0..<letter.count{
                
                if letter[i] == prefix{
                    secret += emoji[i]}
                }
            }
return secret
        }
    
    // MARK: -   النهاية
    
        
  // the bonus:
        func bonus(emoji: Bool, array: [String]) -> String {
            if emoji{
                return secretNameEmoji(array: array)
            }
            else{
                return secretNameLetter(members: array)
            }
            
}






}
