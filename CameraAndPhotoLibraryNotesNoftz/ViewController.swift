//
//  ViewController.swift
//  CameraAndPhotoLibraryNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 10/24/24.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    
    @IBAction func photoAction(_ sender: UIButton) {
    }
    
    @IBAction func cameraAction(_ sender: UIButton) {
    }
    
}

