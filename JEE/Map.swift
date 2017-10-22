//
//  FirstViewController.swift
//  JEE
//
//  Created by UCL on 3/16/15.
//  Copyright (c) 2015 UCL. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Foundation

var locations = [LandMark]()
var mostRecentLocation = String()
var userDefaults = UserDefaults.standard


class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate
{
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ((userDefaults.string(forKey: "recentLocation")) != nil) {
            mostRecentLocation = userDefaults.string(forKey: "recentLocation")!
        }
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
        
        let region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(51.5452, -0.0975), 15000, 15000)
        mapView.setRegion(region, animated: true)
    
        mapView.delegate = self
        
        
        var temp = LandMark(latitude: 51.518759, longitude: -0.081432, title: "Liverpool Street", subtitle: "Rail Station")
        locations.append(temp)
        temp = LandMark(latitude: 51.517980, longitude: -0.079546, title: "Dirty Dicks", subtitle: "Pub")
        locations.append(temp)
        temp = LandMark(latitude: 51.518302, longitude: -0.077793, title: "Sandy's Row", subtitle: "Synagogue")
        locations.append(temp)
        temp = LandMark(latitude: 51.514343, longitude: -0.079019, title: "Bevis Marks", subtitle: "Synagogue")
        locations.append(temp)
        temp = LandMark(latitude: 51.517923, longitude: -0.075524, title: "Soup Kitchen", subtitle: "For the Jewish Poor")
        locations.append(temp)
        temp = LandMark(latitude: 51.519325, longitude: -0.075525, title: "Ping Pong", subtitle: "and Jewish Culture")
        locations.append(temp)
        temp = LandMark(latitude: 51.519737, longitude: -0.074360, title: "St. Johns", subtitle: "Restaurant")
        locations.append(temp)
        temp = LandMark(latitude: 51.521357, longitude: -0.076685, title: "Marko Gertler", subtitle: "on Elder Street")
        locations.append(temp)
        temp = LandMark(latitude: 51.523713, longitude: -0.074938, title: "Bethnal Green", subtitle: "Great Synagogue")
        locations.append(temp)
        temp = LandMark(latitude: 51.523628, longitude: -0.074829, title: "Needle Trades", subtitle: "Memorial")
        locations.append(temp)
        temp = LandMark(latitude: 51.524372, longitude: -0.075124, title: "The Cut Corner", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.524351, longitude: -0.071591, title: "Brick Lane", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.520295, longitude: -0.072789, title: "Hanbury Street", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.519848, longitude: -0.072512, title: "Princelet Street", subtitle: "Synagogue")
        locations.append(temp)
        temp = LandMark(latitude: 51.519338, longitude: -0.073029, title: "Fournier Street", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.517086, longitude: -0.072131, title: "Entrance Arch", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.515935, longitude: -0.070200, title: "Whitechapel", subtitle: "Art Gallery")
        locations.append(temp)
        temp = LandMark(latitude: 51.516064, longitude: -0.070754, title: "Freedom Press", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.515881, longitude: -0.070369, title: "Jewish Daily Post", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.517068, longitude: -0.067104, title: "Liberty Bell", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.517050, longitude: -0.065550, title: "Fieldgate Street", subtitle: "Synagogue")
        locations.append(temp)
        temp = LandMark(latitude: 51.517251, longitude: -0.063500, title: "Tayyabs", subtitle: "Punjabi Restaurant")
        locations.append(temp)
        temp = LandMark(latitude: 51.519947, longitude: -0.056675, title: "Mass Politics", subtitle: "in 'the Waste'")
        locations.append(temp)
        temp = LandMark(latitude: 51.519785, longitude: -0.052920, title: "Rinkoffs Cheesecake", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.524015, longitude: -0.063993, title: "Sport", subtitle: "Boxing")
        locations.append(temp)
        temp = LandMark(latitude: 51.519974, longitude: -0.056936, title: "The Blind Beggar", subtitle: "Pub")
        locations.append(temp)
        temp = LandMark(latitude: 51.527684, longitude: -0.055997, title: "Daniel Mendoza's", subtitle: "House")
        locations.append(temp)
        temp = LandMark(latitude: 51.528239, longitude: -0.054745, title: "Museum Gardens", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.528983, longitude: -0.054847, title: "Museum of Childhood", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.529654, longitude: -0.055020, title: "Boxing", subtitle: "York Hall")
        locations.append(temp)
        temp = LandMark(latitude: 51.532565, longitude: -0.042716, title: "Israel Zangwill", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.533279, longitude: -0.042684, title: "Victoria Park", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.531983, longitude: -0.044559, title: "Hackney Wick", subtitle: "and Walk back to Camden")
        locations.append(temp)
        temp = LandMark(latitude: 51.552704, longitude: -0.052733, title: "Pages of Hackney", subtitle: "Bookshop")
        locations.append(temp)
        
        
        temp = LandMark(latitude: 51.524566, longitude: -0.134035, title: "University College London", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.525439, longitude: -0.126112, title: "Lenin", subtitle: "and Bloomsbury")
        locations.append(temp)
        temp = LandMark(latitude: 51.511479, longitude: -0.116002, title: "Kings College London", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.514408, longitude: -0.117372, title: "London School of Economics", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.579446, longitude: -0.147250, title: "Peter Sellers'", subtitle: "House")
        locations.append(temp)
        temp = LandMark(latitude: 51.526402, longitude: -0.125249, title: "North Sea", subtitle: "Fish Restaurant")
        locations.append(temp)
        temp = LandMark(latitude: 51.510913, longitude: -0.128319, title: "Gaby's Deli", subtitle: "Jewish Food")
        locations.append(temp)
        temp = LandMark(latitude: 51.585984, longitude: -0.199945, title: "Joseph's Bookstore", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.513631, longitude: -0.129119, title: "Charing Cross Road", subtitle: "Bookstores")
        locations.append(temp)
        temp = LandMark(latitude: 51.547208, longitude: -0.141704, title: "Owl Bookshop", subtitle: "")
        locations.append(temp)
        temp = LandMark(latitude: 51.566259, longitude: -0.144600, title: "Karl Marx", subtitle: "Highgate Cemetary")
        locations.append(temp)
        temp = LandMark(latitude: 51.561274, longitude: -0.140075, title: "Chimen Abramsky", subtitle: "Dartmouth Park")
        locations.append(temp)
        temp = LandMark(latitude: 51.519080, longitude: -0.124133, title: "Zionist Organisation", subtitle: "Headquarters")
        locations.append(temp)
        temp = LandMark(latitude: 51.523237, longitude: -0.130046, title: "Warburg Institute", subtitle: "London")
        locations.append(temp)
        
    
        for landmark in locations {
            let annotation = MKPointAnnotation()
            annotation.coordinate = landmark.coord
            annotation.title = landmark.title
            annotation.subtitle = landmark.subtitle
            mapView.addAnnotation(annotation)
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if (annotation.title??.isEqual("Current Location"))!{
            return nil;
        }
        let V = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "loc")
        V.canShowCallout = true
        V.rightCalloutAccessoryView = UIButton(type: .detailDisclosure) as UIView
        return V
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl)
    {
        mostRecentLocation = mapView.selectedAnnotations[0].title!! + " " + mapView.selectedAnnotations[0].subtitle!!
        userDefaults.set(mostRecentLocation, forKey: "recentLocation")
        self.tabBarController?.selectedIndex = 2
    }
}
