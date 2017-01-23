//
//  ViewController.swift
//  Demo
//
//  Created by Guillermo Garcia Rebolo on 23/1/17.
//  Copyright © 2017 Guillermo Garcia Rebolo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomSheetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bottomSheetButton.addTarget(self, action: #selector(showActionSheetController(_:)), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.bottomSheetButton.addTarget(self, action: #selector(showActionSheetController(_:)), for: .touchUpInside)
    }
    
    func showActionSheetController(_ sender: UIButton) {
        self.present(self.contructBottomSheetController(), animated: true, completion: nil)
    }
    
    fileprivate func contructBottomSheetController() -> MGBottomSheet {
        
        let mgBottonSheet = MGBottomSheet.mgBottomSheetWithTitle("Actions")
        
        //mgBottonSheet.appearance?.textFont = UIFont(name: "AvenirNext-Bold", size: 18)!
        
        let deleteAction = ActionSheet.actionWithTitle("DELETE", imageIcon: UIImage(named: "FavouriteFilled")!) {
            self.callback()
        }
        
        let markAction = ActionSheet.actionWithTitle("MARK", imageIcon: UIImage(named: "FavouriteFilled")!) {
            self.callback()
        }
        
        let lightAction = ActionSheet.actionWithTitle("LIGHT", imageIcon: UIImage(named: "FavouriteFilled")!) {
            self.callback()
        }
        
        markAction.setActionDisabled()
        
        mgBottonSheet.addAction(deleteAction)
        mgBottonSheet.addAction(markAction)
        mgBottonSheet.addAction(lightAction)
        
        return mgBottonSheet
    }
    
    func callback() {
        NSLog("Action sheet pressed")
    }


}

