//
//  HuggingCompressingViewController.m
//  AutoLayoutDemo
//
//  Created by kitagawa on 2014/12/17.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import "HuggingCompressingViewController.h"

@implementation HuggingCompressingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureWithFirst:nil
                     secound:@"行数に応じて高さが変わります。その分外側のViewの高さも変わります。"];
}

- (void)configureWithFirst:(NSString *)first secound:(NSString *)second
{
    self.first.text = first;
    self.second.text = second;
    
    if (!first) {
        self.firstContainer.hidden = YES;
        self.marginHC.constant = 0;
    }
    if (!second) {
        self.secondContainer.hidden = YES;
    }
}

@end
