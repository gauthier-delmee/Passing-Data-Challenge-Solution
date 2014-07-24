//
//  DetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Gauthier Delmee on 22/07/2014.
//  Copyright (c) 2014 Expectancy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailViewControllerDelegate <NSObject>

@required

-(void)didUpdateText:(NSString *)text;

@end

@interface DetailViewController : UIViewController

@property (weak, nonatomic) id <DetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *textToDisplayLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) NSString *textToDisplay;

- (IBAction)buttonPressed:(UIButton *)sender;

@end
