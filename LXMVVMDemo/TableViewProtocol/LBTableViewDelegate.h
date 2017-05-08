//
//  LBTableViewDelegate.h
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LXTableViewController;
@interface LBTableViewDelegate : NSObject<UITableViewDelegate>
@property (nonatomic,strong) NSArray *array;
@property(nonatomic,weak)LXTableViewController *controller;
@end
