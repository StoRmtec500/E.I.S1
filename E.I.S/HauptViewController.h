//
//  HauptViewController.h
//  E.I.S
//
//  Created by Martin Kuenz on 7/17/13.
//  Copyright (c) 2013 Martin Kuenz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HauptViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lblVersion;
@property (strong, nonatomic) IBOutlet UILabel *lblCopyright;
@property (strong, nonatomic) IBOutlet UILabel *lblHeaderText;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
//@property (strong, nonatomic) IBOutlet UIImageView *sidebarButton;

@end
