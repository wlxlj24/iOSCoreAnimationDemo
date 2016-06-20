//
//  ViewController01.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController01.h"

@interface ViewController01 ()

@property (nonatomic,readwrite,strong) UIView *layerView;

@end

@implementation ViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
	self.layerView.center = self.view.center;
	self.layerView.backgroundColor = [UIColor redColor];
	[self.view addSubview:self.layerView];
	
	//添加蓝色图层
	CALayer *blueLayer = [CALayer layer];
	blueLayer.frame = CGRectMake(50, 50, 100, 100);
	blueLayer.backgroundColor = [UIColor blueColor].CGColor;
	[self.layerView.layer addSublayer:blueLayer];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
