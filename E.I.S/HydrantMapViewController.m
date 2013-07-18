//
//  HydrantMapViewController.m
//  E.I.S
//
//  Created by Martin Kuenz on 7/17/13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import "HydrantMapViewController.h"
#import "SWRevealViewController.h"

@interface HydrantMapViewController ()

@end

#define METERS_PER_MILE 1609.344

@implementation HydrantMapViewController
@synthesize mapView;

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
    self.navigationItem.title =@"Hydrant";
    
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.2f alpha:1.0f];
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [super viewDidLoad];
    mapView.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [[self navigationController] setNavigationBarHidden:NO animated:YES];

    [mapView setShowsUserLocation:YES];
    
    MKUserLocation * userLocation = mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 400, 400);
    [mapView setRegion:region animated:YES];
    
    CLLocationCoordinate2D hydrant;
    
    hydrant.latitude = 47.889552;
    hydrant.longitude = 13.939483;
    
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc]init];
    annotationPoint.coordinate = hydrant;
    annotationPoint.title = @"Behälter 100m3";
    annotationPoint.subtitle = @"Fa. Wolf - Betriebseinfahrt 2";
    [mapView addAnnotation:annotationPoint];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    self.mapView.centerCoordinate = userLocation.location.coordinate;
}

@end
