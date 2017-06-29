//
//  ViewController.m
//  ImageAreaStretchDemo
//
//  Created by User on 2017/6/29.
//  Copyright © 2017年 Tencare. All rights reserved.
//

#import "ViewController.h"

//设备的宽高
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 不处理的图片
    UIImageView *unHandleImg = [[UIImageView alloc] initWithFrame:CGRectMake((SCREENWIDTH-200)/2, 100, 200, 30)];
    unHandleImg.image = [UIImage imageNamed:@"theImage"];
    [self.view addSubview:unHandleImg];
    
    // 处理区域拉伸的图片
    UIImageView *handleImg = [[UIImageView alloc] initWithFrame:CGRectMake((SCREENWIDTH-200)/2, 200, 200, 30)];
    UIImage *img = [UIImage imageNamed:@"theImage"];
    // 四个数值对应图片中距离上、左、下、右边界的不拉伸部分的范围宽度
    img = [img resizableImageWithCapInsets:UIEdgeInsetsMake(35, 35, 35, 35) resizingMode:UIImageResizingModeStretch];
    handleImg.image = img;
    [self.view addSubview:handleImg];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
