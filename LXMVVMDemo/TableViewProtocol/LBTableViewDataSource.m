//
//  LBTableViewDataSource.m
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "LBTableViewDataSource.h"
#import "CustomTableViewCell.h"
#import "FeedbackModel.h"
#import "LBService.h"
@implementation LBTableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    NSString *content=((FeedbackModel *)[_array objectAtIndex:indexPath.row]).content;
   NSString *newContent =  [NSString stringWithFormat:@"%@ %@",@"Q :",[LBService stringFromUnicode:content]];
    cell.textLabel.text = newContent;
    return cell;

}

@end
