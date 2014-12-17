//
//  CustomTableViewCell.h
//  AutoLayoutDemo
//
//  Created by KITAGAWA Tatsuya on 2014/12/18.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *one;
@property (nonatomic, weak) IBOutlet UILabel *two;
@property (nonatomic, weak) IBOutlet UILabel *three;
@property (nonatomic, weak) IBOutlet UILabel *four;
@property (nonatomic, weak) IBOutlet UIView *container;

@end
