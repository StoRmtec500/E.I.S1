//
//  newHydrantViewController.h
//  E.I.S
//
//  Created by Martin Kuenz on 7/18/13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface newHydrantViewController : UIViewController <MKMapViewDelegate>
{
    MKMapView *mapView;
}
@property (strong, nonatomic) IBOutlet UILabel *lblHeaderText;

@property (strong, nonatomic) IBOutlet UILabel *lblHydrantArt;
@property (strong, nonatomic) IBOutlet UILabel *lblMenge;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UILabel *lblBezeichnung;
@property (strong, nonatomic) IBOutlet UILabel *lblLat;
@property (strong, nonatomic) IBOutlet UIButton *btnHinzufuegen;
@property (strong, nonatomic) IBOutlet UILabel *lblLon;
@property (strong, nonatomic) IBOutlet UITextField *edtLat;
@property (strong, nonatomic) IBOutlet UITextField *edtLon;
@property (strong, nonatomic) IBOutlet CLLocationManager *locationManager;
@end
