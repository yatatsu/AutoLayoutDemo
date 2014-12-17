//
//  CustomViewController.m
//  AutoLayoutDemo
//
//  Created by kitagawa on 2014/12/17.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import "CustomViewController.h"
#import "CustomTableViewCell.h"

@implementation CustomViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 56.f;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = (CustomTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
    return cell;
}

@end
