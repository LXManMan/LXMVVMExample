//
//  LBTableViewDelegate.m
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "LBTableViewDelegate.h"
#import "FeedbackModel.h"
#import "LBNextViewController.h"
#import "LXTableViewController.h"
@implementation LBTableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_array.count>0) {

        [self.controller.navigationController pushViewController:[[LBNextViewController alloc]init] animated:YES];
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0;
}
@end
