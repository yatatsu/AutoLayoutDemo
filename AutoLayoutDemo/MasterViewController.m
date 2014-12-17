//
//  MasterViewController.m
//  AutoLayoutDemo
//
//  Created by kitagawa on 2014/12/17.
//  Copyright (c) 2014年 kitagawa. All rights reserved.
//

#import "MasterViewController.h"

typedef NS_ENUM(NSInteger, ALDDemoType) {
    ALDDemoTypeWithSpacer,
    ALDDemoTypeHuggingAndCompressing,
    ALDDemoTypePlaceHolder,
    ALDDemoTypeCustomView,
};

@interface MasterViewController ()

@property (nonatomic, copy) NSArray *objects;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.objects[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *dest;
    switch (indexPath.row) {
        case ALDDemoTypeWithSpacer:
            dest = @"WithSpacer";
            break;
        case ALDDemoTypeHuggingAndCompressing:
            dest = @"HuggingCompressing";
            break;
        case ALDDemoTypePlaceHolder:
            dest = @"PlaceHolder";
            break;
        case ALDDemoTypeCustomView:
            dest = @"CustomView";
            break;
    }
    UIViewController *destVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:dest];
    [self.navigationController pushViewController:destVC animated:YES];
}

#pragma mark - Demo

- (NSArray *)objects
{
    return @[
             @"SpacerView",
             @"Hugging and ContentCompressionResistance",
             @"PlaceHolder",
             @"CustomView",
             ];
}

@end
