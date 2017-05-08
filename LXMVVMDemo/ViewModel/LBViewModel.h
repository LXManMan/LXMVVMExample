//
//  LBViewModel.h
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^callback)(NSArray *array);
@interface LBViewModel : NSObject

-(void)headerRefreshRequestWithCallback:(callback)callback;
@end
