//
//  TabBarController.swift
//  JavaJuniorDeveloper
//
//  Created by Muller Alexander on 23.05.2022.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private lazy var questionsNC: UINavigationController = {
        let image = UIImage(systemName: "book.closed.fill")!
        $0.tabBarItem = .init(title: "Вопросы", image: image, selectedImage: image)
        return $0
    }(UINavigationController(rootViewController: ViewController(nibName: nil, bundle: nil)))
    
    private lazy var testsNC: UINavigationController = {
        let image = UIImage(systemName: "doc.text.fill")!
        $0.tabBarItem = .init(title: "Тесты", image: image, selectedImage: image)
        return $0
    }(UINavigationController(nibName: nil, bundle: nil))
    
    private lazy var statsNC: UINavigationController = {
        let image = UIImage(systemName: "person.fill")!
        $0.tabBarItem = .init(title: "Статистика", image: image, selectedImage: image)
        return $0
    }(UINavigationController(nibName: nil, bundle: nil))
    
    private lazy var settingsNC: UINavigationController = {
        let image = UIImage(systemName: "slider.horizontal.3")!
        $0.tabBarItem = .init(title: "Настройки", image: image, selectedImage: image)
        return $0
    }(UINavigationController(nibName: nil, bundle: nil))
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setViewControllers([questionsNC, testsNC, statsNC, settingsNC], animated: false)
        selectedIndex = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
