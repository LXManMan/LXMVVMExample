//
//  LXTableViewController.m
//  LXRefreshAnimation
//
//  Created by chuanglong02 on 16/11/30.
//  Copyright © 2016年 漫漫. All rights reserved.
//

#import "LXTableViewController.h"
#import "CustomTableViewCell.h"
#import "LBTableViewDelegate.h"
#import "LBTableViewDataSource.h"
#import "LBViewModel.h"
/**
 * 随机数据
 */

#import "MJRefresh.h"
@interface LXTableViewController ()
{
    
    MJRefreshNormalHeader *refreshHeader;
    MJRefreshAutoNormalFooter *refreshFooter;
    NSMutableArray *totalSource;
    LBViewModel *tableViewModel;
    UITableView *tableView;
    LBTableViewDataSource *tableViewDataSource;
    LBTableViewDelegate *tableViewDelegate;
}
/** 用来显示的假数据 */
@end

@implementation LXTableViewController
-(void)dealloc{
    NSLog(@"%s",__func__ );
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, Device_Width, Device_Height-64) style:UITableViewStylePlain];
    tableView.tableFooterView =[UIView new];
    [self.view addSubview:tableView];
    tableViewDataSource=[[LBTableViewDataSource alloc] init];
    tableViewDelegate=[[LBTableViewDelegate alloc] init];
    tableView.dataSource=tableViewDataSource;
    tableView.delegate=tableViewDelegate;
    
    tableViewDelegate.controller = self;
    tableViewModel=[[LBViewModel alloc] init];
    totalSource=0;
    
    __weak typeof(self) weakSelf = self;

    // 设置回调（一旦进入刷新状态就会调用这个refreshingBlock）
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        __strong typeof(self) strongSelf = weakSelf;

        [strongSelf loadNewData];
    }];
    
    // 马上进入刷新状态
    [self.tableView.mj_header beginRefreshing];

}

-(void)loadNewData{
    
    [tableViewModel headerRefreshRequestWithCallback:^(NSArray *array){
        totalSource=(NSMutableArray *)array;
        tableViewDataSource.array=totalSource;
        tableViewDelegate.array=totalSource;
        [self.tableView.mj_header endRefreshing];
        [tableView reloadData];
    }];
}


@end
