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

class MapView: BaseCell , CLLocationManagerDelegate, GMSMapViewDelegate {
    
    
    var state_markers3 = GMSMarker()
    var state_markers2 = GMSMarker()
    
    let defualts = UserDefaults.standard
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
        
        
        self.state_markers2.position = CLLocationCoordinate2D(latitude: Double(defualts.string(forKey: "latitude")!)!,  longitude : Double(defualts.string(forKey: "longitude")!)!)
        self.state_markers2.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers2.appearAnimation = .pop
        self.state_markers2.isFlat = true
        self.state_markers2.map = self.googlemap

        
        
        
        self.state_markers3.position = CLLocationCoordinate2D(latitude: Double(51.51), longitude: Double(-0.1345))
        self.state_markers3.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        self.state_markers3.appearAnimation = .pop
        self.state_markers3.isFlat = true
        self.state_markers3.map = self.googlemap
         drawPath(clientdata: state_markers2, marketdata: state_markers3)
    
        
    }
    //Fires when the user Allow/Doesn't allow the permission of getting the current location
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //Check if the user allowed us to access the current location
        if status == .authorizedWhenInUse {
            //Show "My Current Location" to the user
            googlemap.isMyLocationEnabled = true
            googlemap.settings.myLocationButton = true
            //Start get the user's lcoation
            locationManager.startUpdatingLocation()
            
        }
    }
    
    //Get the user location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
             if let location = locations.first {
            //Setup the map camera
            googlemap.camera = GMSCameraPosition(target: location.coordinate, zoom: 17, bearing: 0, viewingAngle: 0)
                let defualts = UserDefaults.standard
                defualts.setValue( location.coordinate.latitude , forKey: "latitude")
                defualts.setValue( location.coordinate.longitude , forKey: "longitude")
                print(location.coordinate.longitude)
                print(location.coordinate.latitude)
                print("hazem")
                locationManager.stopUpdatingLocation()
        
        }
    }
    
    
    
        lazy  var  googlemap : GMSMapView = {
            GMSServices.provideAPIKey("AIzaSyAqG1lv5dPgid5U50whDhP_bRTlopLXyMY")
          let camera = GMSCameraPosition.camera(withLatitude:0,  longitude :0, zoom: 20)
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




