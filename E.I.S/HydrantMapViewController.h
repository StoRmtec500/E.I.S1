//
//  HydrantMapViewController.h
//  E.I.S
//
//  Created by Martin Kuenz on 7/17/13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface HydrantMapViewController : UIViewController <MKMapViewDelegate>
{
    MKMapView *mapView;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
