//
//  newHydrantViewController.m
//  E.I.S
//
//  Created by Martin Kuenz on 7/18/13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import "newHydrantViewController.h"

@interface newHydrantViewController ()

@end

@implementation newHydrantViewController

@synthesize lblHeaderText, mapView, lblHydrantArt, lblBezeichnung, lblLat, lblLon, lblMenge, btnHinzufuegen, locationManager, edtLat, edtLon;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lblHeaderText.text = @"neuen Hydrant hinzufügen";
    lblHydrantArt.text = @"Hydrantenart:";
    lblBezeichnung.text = @"Bezeichnung:";
    lblLat.text = @"Breitengrad:";
    lblLon.text = @"Längengrad:";
    lblMenge.text = @"Menge";
    [btnHinzufuegen setTitle:@"Hydrant hinzufügen" forState:UIControlStateNormal];
	// Do any additional setup after loading the view.
    
    locationManager = [[CLLocationManager alloc]init];
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [locationManager startUpdatingLocation];
    
    [edtLat setText:[NSString stringWithFormat:@"%f", locationManager.location.coordinate.latitude]];
    [edtLon setText:[NSString stringWithFormat:@"%f", locationManager.location.coordinate.longitude]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [mapView setShowsUserLocation:YES];
    
    MKUserLocation * userLocation = mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 100, 100);
    [mapView setRegion:region animated:YES];
}

//-(NSString *)deviceLocation {
  //  NSString *theLocation = [NSString stringWithFormat:@"latitude: %f longitude: %f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];
    
    
    //return theLocation;
//}



@end
