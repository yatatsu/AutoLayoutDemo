//
//  HuggingCompressingViewController.h
//  AutoLayoutDemo
//
//  Created by kitagawa on 2014/12/17.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HuggingCompressingViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *first;
@property (nonatomic, weak) IBOutlet UILabel *second;
@property (nonatomic, weak) IBOutlet UIView *firstContainer;
@property (nonatomic, weak) IBOutlet UIView *secondContainer;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *marginHC;

@end
