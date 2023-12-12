//
//  main.swift
//  Kiosk2
//
//  Created by 최유리 on 12/7/23.
//

import Foundation

func mainPage() {
    var isRunning: Bool = true
    var menuDepth = 0
    
    print("""
        -- 아래 메뉴판을 보시고 메뉴를 골라 입력해주세요. --
        [ SHACKSHACK MENU ]
        """)
    MainMenu.displayInfo()
    
    while isRunning {
        if let input = readLine(), let inputNum = Int(input) {
            if inputNum == 0 && menuDepth == 0 {
                isRunning = false
            }
            switch inputNum {
            case 0:
                print("""
                -- 아래 메뉴판을 보시고 메뉴를 골라 입력해주세요. --
                [ SHACKSHACK MENU ]
                """)
                MainMenu.displayInfo()
                menuDepth = 0
            case 1:
                print("[ Burgers MENU ]")
                Burger.displayInfo()
                print("0. 뒤로가기  | 뒤로가기")
                menuDepth = 1
            case 2:
                print("[ Frozen Custard MENU ]")
                FrozenCustard.displayInfo()
                print("0. 뒤로가기  | 뒤로가기")
                menuDepth = 1
            case 3:
                print("[ Drinks MENU ]")
                Drinks.displayInfo()
                print("0. 뒤로가기  | 뒤로가기")
                menuDepth = 1
            case 4:
                print("[ Beer MENU ]")
                Beer.displayInfo()
                print("0. 뒤로가기  | 뒤로가기")
                menuDepth = 1
            default:
                print("잘못된 입력입니다. 번호를 다시 확인해주세요")
            }
        }
    }
}

mainPage()
