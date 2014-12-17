//
//  CustomViewController.h
//  AutoLayoutDemo
//
//  Created by kitagawa on 2014/12/17.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
