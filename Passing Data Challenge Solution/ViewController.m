//
//  ViewController.m
//  Passing Data Challenge Solution
//
//  Created by Gauthier Delmee on 22/07/2014.
//  Copyright (c) 2014 Expectancy. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //need to add code here so the lavel of the DetailViewController can be updated
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
            DetailViewController *nextViewController = segue.destinationViewController;
            
//            NSLog(@"%@", self.textField.text);
            
            NSString *textToDisplay = self.textField.text;
            
//            NSLog(@"%@", textToDisplay);
            
            nextViewController.textToDisplay = textToDisplay;
            nextViewController.delegate = self;
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - DetailViewController Delegate

-(void)didUpdateText:(NSString *)text{
    self.textField.text = text;
}

#pragma mark - UITextFiled Delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.textField resignFirstResponder];
    return YES;
}

@end
