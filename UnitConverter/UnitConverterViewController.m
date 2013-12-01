//
//  UnitConverterViewController.m
//  UnitConverter
//
//  Created by Christian Pipp on 29.11.13.
//  Copyright (c) 2013 Christian Pipp. All rights reserved.
//

#import "UnitConverterViewController.h"

@interface UnitConverterViewController ()

@end

@implementation UnitConverterViewController

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

- (IBAction)convertTemp:(id)sender {
    double fahrenheit = [_tempText.text doubleValue];
    double celsius = (fahrenheit-32) / 1.8;
    
    NSString *resultString = [[NSString alloc] initWithFormat:@"Celsius %f", celsius];
    
    _resultLabel.text = resultString;
}

- (IBAction)textFieldReturn:(id)sender  {
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempText isFirstResponder] && [touch view] != _tempText)    {
        [_tempText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
    
}
@end
