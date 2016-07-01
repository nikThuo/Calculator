//
//  HWViewController.h
//  HelloWorld
//
//  Created by ilabadmin on 6/28/16.
//  Copyright (c) 2016 Strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblHello;


- (IBAction)callHello:(UIButton *)sender;

@end
