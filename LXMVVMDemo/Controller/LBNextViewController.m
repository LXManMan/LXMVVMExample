

//
//  LBNextViewController.m
//  LubiEdu
//
//  Created by zhongzhi on 2017/5/8.
//  Copyright © 2017年 chuanglong. All rights reserved.
//

#import "LBNextViewController.h"
#import "LXTableViewController.h"
@interface LBNextViewController ()

@end

@implementation LBNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor =[UIColor whiteColor];
    
    
    UILabel *lable =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 100)];
    lable.center = self.view.center;
    lable.text = @"MVVMDemo";
    lable.textColor =[UIColor magentaColor];
    lable.textAlignment =NSTextAlignmentCenter;
    lable.font =[UIFont fontWithName:@"Georgia-BoldItalic" size:25];

    [self.view addSubview:lable];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LXTableViewController *tabVc =[[LXTableViewController alloc]init];
    [self.navigationController pushViewController:tabVc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
