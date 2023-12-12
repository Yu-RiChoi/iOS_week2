//
//  Data.swift
//  Kiosk2
//
//  Created by 최유리 on 12/7/23.
//

import Foundation

struct main {
    let num: Int
    let name: String
    let desc: String
}

struct menu {
    let num: Int
    let name: String
    let price: Double
    let desc: String

}

class MainMenu {
    static var shackShackMenu: [main] = [
        main(num: 1, name: "Burgers", desc: "앵거스 비프 통살을 다져만든 버거"),
        main(num: 2, name: "Frozen Custard", desc: "매장에서 신선하게 만드는 아이스크림"),
        main(num: 3, name: "Drinks", desc: "매장에서 직접 만드는 음료"),
        main(num: 4, name: "Beer", desc: "뉴욕 브루클린 브루어리에서 양조한 맥주"),
        main(num: 0, name: "종료", desc: "프로그램 종료")
    ]
    
    init(shackShackMenu: [main]) {
        MainMenu.shackShackMenu = shackShackMenu
    }
    
    static func displayInfo() {
        shackShackMenu.forEach {print("\($0.num). \($0.name)  | \($0.desc)")}
    }
}


class Burger {
    static var burgerMenu: [menu] = [
        menu(num: 1, name: "ShackBurger", price: 6.9, desc: "토마토, 양상추, 쉑소스가 토핑된 치즈버거"),
        menu(num: 2, name: "SmokeShack", price: 8.9, desc: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거"),
        menu(num: 3, name: "Shroom Burger", price: 9.4, desc: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거"),
        menu(num: 4, name: "Cheeseburger", price: 6.9, desc: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거"),
        menu(num: 5, name: "Hamburger", price: 5.4, desc: "비프패티를 기반으로 야채가 들어간 기본버거")
    ]
    
    init(burgerMenu: [menu]) {
        Burger.burgerMenu = burgerMenu
    }
    
    static func displayInfo() {
        burgerMenu.forEach {print("\($0.num). \($0.name) | \($0.price) | \($0.desc)")}
    }
    
}

class FrozenCustard {
    static var frozenCustardMenu: [menu] = [
        menu(num: 1, name: "Shake", price: 5.9, desc: "바닐라, 초콜렛, 솔티드 카라멜, 블랙 & 화이트,스토로 베리,피넛버터, 커피"),
        menu(num: 2, name: "Shake of the Week", price: 6.5, desc: "특별한 커스터드 플레이버"),
        menu(num: 3, name: "Red Bean Shake", price: 6.5, desc: "신선한 커스터드와 함께 우유와 레드빈이 블렌딩 된 시즈널 쉐이크"),
        menu(num: 4, name: "Floats", price: 5.9, desc: "루트비어, 퍼플 카우, 크림시클"),
        menu(num: 5, name: "Cups & Cones ", price: 4.9, desc: "바닐라, 초콜렛, Flavor of the Week"),
        menu(num: 6, name: "Concretes", price: 5.9, desc: "쉐이크쉐의 쫀득한 커스터드와 다양한 믹스-인의 조합")
    ]

    init(frozenCustardMenu: [menu]) {
        FrozenCustard.frozenCustardMenu = frozenCustardMenu
    }
    
    static func displayInfo() {
        frozenCustardMenu.forEach{print("\($0.num). \($0.name) | \($0.price) | \($0.desc)")}
    }
}

class Drinks {
    static var drinkMenu: [menu] = [
        menu(num: 1, name: "Shack-made Lemonade", price: 3.9, desc: "매장에서 직접 만드는 상큼한 레몬에이드 (오리지날/시즈널)"),
        menu(num: 2, name: "Fresh Brewed Iced Tea", price: 3.4, desc: "직접 유기농 홍차를 우려낸 아이스티"),
        menu(num: 3, name: "Fifty/Fifty", price: 3.5, desc: "레몬에이드와 아이스티의 만남"),
        menu(num: 4, name: "Fountain Soda", price: 2.7, desc: "코카콜라, 코카콜라 제로, 스프라이트, 환타오렌지, 환타 그레이프"),
        menu(num: 5, name: "Abita Root Beer", price: 4.4, desc: "청량감 있는 독특한 미국식 무알콜 탄산음료"),
        menu(num: 6, name: "Bottled Water", price: 1.0, desc: "지리산 암반대수층으로 만든 프리미엄 생수")
    ]
    
    init(drinkMenu: [menu]) {
        Drinks.drinkMenu = drinkMenu
    }
    
    static func displayInfo() {
        drinkMenu.forEach{print("\($0.num). \($0.name) | \($0.price) | \($0.desc)")}
    }
}

class Beer {
    static var beerMenu: [menu] = [
        menu(num: 1, name: "ShackMeister Ale", price: 9.8, desc: "쉐이크식 버거를 위해 뉴욕 브루클린 브루어리에서 특별히 양조한 에일 맥주"),
        menu(num: 2, name: "Magpie Brewing Co.", price: 6.8, desc: "Pale Ale, Draft")
    ]
    
    init(beerMenu: [menu]) {
        Beer.beerMenu = beerMenu
    }
    
    static func displayInfo() {
        beerMenu.forEach{print("\($0.num). \($0.name) | \($0.price) | \($0.desc)")}
    }
}

