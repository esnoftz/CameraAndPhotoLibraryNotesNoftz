//
//  ViewController.swift
//  CameraAndPhotoLibraryNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 10/24/24.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    
    @IBAction func photoAction(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cameraAction(_ sender: UIButton) {
        // camera option only works if camera is available on the device -- otherwise goes to library
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
        } else {
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // as soon as it dismisses, it will do whatever is in the curly braces
        // must put self if in a closure
        // puts whatever image you select in the image view outlet
        picker.dismiss(animated: true) {
            self.imageViewOutlet.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        }
    }
    
}

