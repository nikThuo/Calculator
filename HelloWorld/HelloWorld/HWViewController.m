//
//  HWViewController.m
//  HelloWorld
//
//  Created by ilabadmin on 6/28/16.
//  Copyright (c) 2016 Strathmore. All rights reserved.
//

#import "HWViewController.h"

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callHello:(UIButton *)sender {
    self.lblHello.text = @"HelloWorld";
}
@end
