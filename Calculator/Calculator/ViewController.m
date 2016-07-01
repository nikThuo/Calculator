//
//  ViewController.m
//  Calculator
//
//  Created by ilabadmin on 01/07/2016.
//  Copyright © 2016 Strathmore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button7:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction)button8:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction)button9:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction)button4:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction)button5:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction)button6:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction)button1:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}

- (IBAction)button2:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}

- (IBAction)button3:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction)button0:(UIButton *)sender {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction)clearDisplay:(UIButton *)sender {
    display.text = @"";
}

- (IBAction)plusbutton:(UIButton *)sender {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)minusbutton:(UIButton *)sender {
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction)multiplybutton:(UIButton *)sender {
    operation = Multiply;
    storage = display.text;
    display.text=@"";
}

- (IBAction)dividebutton:(UIButton *)sender {
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction)equalsbutton:(UIButton *)sender {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
