//
//  BCDNewsSubViewController.m
//  BCDNews
//
//  Created by bigcd on 16/3/10.
//  Copyright © 2016年 bbigcd. All rights reserved.
//

#import "BCDNewsSubViewController.h"

@interface BCDNewsSubViewController ()

@end

@implementation BCDNewsSubViewController
static NSString * const ID = @"cell";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupTableView];
}
- (void)setupTableView
{
    // 设置内边距
    CGFloat bottom = self.tabBarController.tabBar.height + BCDTitilesViewY;
    CGFloat top = BCDTitilesViewH;
    self.tableView.contentInset = UIEdgeInsetsMake(top, 0, bottom, 0);
    self.tableView.contentSize = CGSizeZero;
    // 设置滚动条的内边距
    self.tableView.scrollIndicatorInsets = self.tableView.contentInset;
    
    // 注册
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %zd", self.title, indexPath.row+1] ;
    
    
    return cell;
}




@end
