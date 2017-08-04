//
//  ViewController.m
//  TriangleButton
//
//  Created by admin on 2017/8/4.
//  Copyright © 2017年 常丛丛. All rights reserved.
//

#import "ViewController.h"
#import "TriangleButton.h"

@interface ViewController (){
    UILabel *lblShow;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    TriangleButton *btnShow=[[TriangleButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btnShow setButtonClick:^{
        lblShow.text=[NSString stringWithFormat:@"%d:您点击了我", arc4random() % 100];
    }];
    btnShow.center=self.view.center;
    [self.view addSubview:btnShow];
    
    lblShow=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 30)];
    lblShow.textColor=[UIColor darkTextColor];
    lblShow.font=[UIFont systemFontOfSize:15];
    lblShow.textAlignment=NSTextAlignmentCenter;
    lblShow.center=CGPointMake(self.view.center.x, self.view.center.y+80);
    [self.view addSubview:lblShow];
}


@end
