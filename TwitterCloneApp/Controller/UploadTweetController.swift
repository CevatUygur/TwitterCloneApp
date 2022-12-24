//
//  UploadTweetController.swift
//  TwitterCloneApp
//
//  Created by CEVAT UYGUR on 24.12.2022.
//

import UIKit

class UploadTweetController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .twitterBlue
        button.setTitle("Tweet", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        
        button.frame = CGRect(x: 0, y: 0, width: 64, height: 32)
        button.layer.cornerRadius = 32 / 2
        
        button.addTarget(self, action: #selector(handleUploadTweet), for: .touchUpInside)
        return button
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    // MARK: - Selectors
    
    @objc func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func handleUploadTweet() {
        print("DEBUG: Upload tweet here...")
    }
    
    
    // MARK: - API
    
    
    
    // MARK: - Helpers
    
    func configureUI(){
        
        view.backgroundColor = .white
        
        let appearanceNavBar = UINavigationBarAppearance()
        appearanceNavBar.configureWithOpaqueBackground()
        appearanceNavBar.backgroundColor = .white
        navigationController?.navigationBar.standardAppearance = appearanceNavBar
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        
        let appearanceTabBar = UITabBarAppearance()
        navigationController?.tabBarItem.standardAppearance = appearanceTabBar
        appearanceTabBar.configureWithOpaqueBackground()
        if #available(iOS 15.0, *) {
            navigationController?.tabBarItem.scrollEdgeAppearance = navigationController?.tabBarItem.standardAppearance
        } else {
            // Fallback on earlier versions
        }
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: actionButton)
    }
    
}
