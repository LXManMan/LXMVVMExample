//
//  LBViewModel.m
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "LBViewModel.h"
#import "FeedbackModel.h"
@implementation LBViewModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void)headerRefreshRequestWithCallback:(callback)callback{
    NSString *url = @"https://139.129.165.192:8443/lbjy-project/findInfoFeedback.action?userId=33A971DAE942BEB3E050190AE10D552C";
    [LBHTTPTool get:url params:nil success:^(id responseObject) {
        
//        NSLog(@"%@",responseObject);
        NSMutableArray *arr=[NSMutableArray array];

        NSMutableArray *responseArray =[FeedbackModel mj_keyValuesArrayWithObjectArray:responseObject[@"FeedbackList"]];
        for (NSDictionary *paramDic in responseArray) {
            FeedbackModel *model =[FeedbackModel mj_objectWithKeyValues:paramDic];
            [arr addObject:model];
        }
        callback(arr);
    } failure:^(NSError *error) {
        
        
    }];
}
@end
