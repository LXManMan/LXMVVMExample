//
//  FeedbackModel.h
//  LubiEdu
//
//  Created by chuanglong02 on 16/6/29.
//  Copyright © 2016年 chuanglong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedbackModel : NSObject
@property(nonatomic,strong)NSString *content;
@property(nonatomic,strong)NSString *answerTime;
@property(nonatomic,strong)NSString *answer;

@property(nonatomic,strong)NSString *createTime;
@property(nonatomic,strong)NSString *status;

@end
