//
//  ViewController.m
//  PlaceholderInUITextView
//
//  Created by Suraj on 12/02/14.
//  Copyright (c) 2014 Suraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblPlaceHolderText;
@property (weak, nonatomic) IBOutlet UITextView *textViewForMessage;

@end

@implementation ViewController

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

#pragma UITextView Delegate
- (void)textViewDidChange:(UITextView *)textView {
    // Enable and disable lblPlaceHolderText
    if ([textView.text length] > 0) {
        [textView setBackgroundColor:[UIColor whiteColor]];
        [self.lblPlaceHolderText setHidden:YES];
    } else {
        [textView setBackgroundColor:[UIColor clearColor]];
        [self.lblPlaceHolderText setHidden:NO];
    }
}

@end
