//
//  ViewController.swift
//  cardview
//
//  Created by Khalid Hossain on 2/28/21.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arView.renderOptions = [.disableGroundingShadows, .disableDepthOfField]

        // Load the "Box" scene from the "Experience" Reality File
        let cometCardKhalidAnchor = try! Experience.loadCometCardKhalid()
        let citiAnchor = try! Experience.loadCiti()
        let venmoAnchor = try! Experience.loadVenmo()
        let starbucksAnchor = try! Experience.loadStarbucks()
        let ebayAnchor = try! Experience.loadEBay()
            
       
        
        // Add the box anchor to the scene
        arView.environment.lighting.intensityExponent = 2
        arView.scene.anchors.append(cometCardKhalidAnchor)
        arView.scene.anchors.append(citiAnchor)
        arView.scene.anchors.append(venmoAnchor)
        arView.scene.anchors.append(starbucksAnchor)
        arView.scene.anchors.append(ebayAnchor)
        
    }
    
    @IBAction func reset(_ sender: Any) {

        arView.scene.anchors.removeAll()
        
        let cometCardKhalidAnchor = try! Experience.loadCometCardKhalid()
        let citiAnchor = try! Experience.loadCiti()
        let venmoAnchor = try! Experience.loadVenmo()
        let starbucksAnchor = try! Experience.loadStarbucks()
        let appleAnchor = try! Experience.loadEBay()
            
       
        
        // Add the box anchor to the scene
        arView.environment.lighting.intensityExponent = 2
        arView.scene.anchors.append(cometCardKhalidAnchor)
        arView.scene.anchors.append(citiAnchor)
        arView.scene.anchors.append(venmoAnchor)
        arView.scene.anchors.append(starbucksAnchor)
        arView.scene.anchors.append(appleAnchor)
        
    }
    
    @IBAction func youtubeLink(_ sender: UIButton) {
        if let url = URL(string: "https://www.ebay.com/deals/featured/under-25-steals") {
          UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
}

}

