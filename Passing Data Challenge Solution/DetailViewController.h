//
//  DetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Gauthier Delmee on 22/07/2014.
//  Copyright (c) 2014 Expectancy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *textToDisplayLabel;

@property (strong, nonatomic) NSString *textToDisplay;

@end
