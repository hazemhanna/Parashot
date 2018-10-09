//
//  SecondSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//

//
//  FirstSubCategryView.swift
//  Parshot
//
//  Created by hazem on 9/8/18.
//  Copyright © 2018 hazem. All rights reserved.
//



import UIKit
import GoogleMaps
import Alamofire
import SwiftyJSON

class FollowOrderView: BaseCell , CLLocationManagerDelegate, GMSMapViewDelegate {
    
    var state_markers1 = GMSMarker()
    var state_markers2 = GMSMarker()
    var state_markers3 = GMSMarker()
    
   // let defualts = UserDefaults.standard
    let locationManager = CLLocationManager()
    
    override func setupViews() {
        locationManager.delegate = self
        
        //Ask the user for location permision
        locationManager.requestWhenInUseAuthorization()
        
        backgroundColor = UIColor.white
        addSubview(googlemap)
        googlemap.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        googlemap.centerXAnchor.constraint(equalTo:centerXAnchor ).isActive = true
        googlemap.widthAnchor.constraint(equalTo:  widthAnchor).isActive = true
        googlemap.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        ////////
        self.state_markers1.position = CLLocationCoordinate2D(latitude: 30.045000,  longitude : 31.211980 )
        self.state_markers1.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers1.appearAnimation = .pop
        self.state_markers1.isFlat = true
        self.state_markers1.map = self.googlemap
        /////
        self.state_markers2.position = CLLocationCoordinate2D(latitude: 30.044420,  longitude : 31.235712 )
        self.state_markers2.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers2.appearAnimation = .pop
        self.state_markers2.isFlat = true
        self.state_markers2.map = self.googlemap


        self.state_markers3.position = CLLocationCoordinate2D(latitude: Double(30.013056), longitude: Double(31.208853))
        self.state_markers3.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers3.appearAnimation = .pop
        self.state_markers3.isFlat = true
        self.state_markers3.map = self.googlemap
        drawPath(clientdata: state_markers2, marketdata: state_markers3)
    
         drawPath(clientdata: state_markers2, marketdata: state_markers1)
   
    }
    
    lazy  var  googlemap : GMSMapView = {
        GMSServices.provideAPIKey("AIzaSyAqG1lv5dPgid5U50whDhP_bRTlopLXyMY")
        let camera = GMSCameraPosition.camera(withLatitude:30.044420,  longitude :31.235712, zoom: 15)
        let  googlemaps = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        googlemaps.translatesAutoresizingMaskIntoConstraints = false
        googlemaps.delegate = self
        return googlemaps
    }()
    
    func drawPath(clientdata: GMSMarker,marketdata:GMSMarker)
    {
        let origin = "\(clientdata.position.latitude),\(clientdata.position.longitude)"
        let destination = "\(marketdata.position.latitude),\(marketdata.position.longitude)"
        //        print(origin)
        //        print(destination)
        let url = "https://maps.googleapis.com/maps/api/directions/json?origin=\(origin)&destination=\(destination)&mode=driving"

        Alamofire.request(url).responseJSON { response in

            print(response.request as Any)  // original URL request
            print(response.response as Any) // HTTP URL response
            print(response.data as Any)     // server data
            print(response.result as Any)   // result of response serialization
            do {
                let json = try JSON(data: response.data!)
                let routes = json["routes"].arrayValue

                // print route using Polyline
                for route in routes
                {
                    let routeOverviewPolyline = route["overview_polyline"].dictionary
                    let points = routeOverviewPolyline?["points"]?.stringValue
                    let path = GMSPath.init(fromEncodedPath: points!)
                    let polyline = GMSPolyline.init(path: path)
                    polyline.strokeWidth = 5
                    polyline.strokeColor = UIColor.rgb(66, green: 133, blue: 244)
                    polyline.map = self.googlemap
                }
                var bounds = GMSCoordinateBounds()


                bounds = bounds.includingCoordinate(self.state_markers2.position)

                bounds = bounds.includingCoordinate(self.state_markers3.position)
                let update = GMSCameraUpdate.fit(bounds, withPadding: CGFloat(20))
                self.googlemap.animate(with: update)

            }

            catch let error as NSError {
                print(error)
            }


        }

    }
    

    
    
}





