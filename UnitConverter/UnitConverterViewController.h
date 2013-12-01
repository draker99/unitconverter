//
//  UnitConverterViewController.h
//  UnitConverter
//
//  Created by Christian Pipp on 29.11.13.
//  Copyright (c) 2013 Christian Pipp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnitConverterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;


@end
