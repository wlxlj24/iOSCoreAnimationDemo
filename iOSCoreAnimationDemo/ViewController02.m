//
//  ViewController02.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController02.h"

@interface ViewController02 ()

@property (nonatomic,readwrite,strong) UIView *layerView;

@end

@implementation ViewController02

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
//1.CGImage属于CoreFoundation，并不是Cocoa框架类，需使用__bridge桥接
	UIImage *image = [UIImage imageNamed:@"xiaohuihui"];
	blueLayer.contents = (__bridge id _Nullable)(image.CGImage);
//2.contentsGravity对应于UIView的contentMode属性，用于调节图片的显示细节
//	blueLayer.contentsGravity = kCAGravityResizeAspect;
	
//3.CGImage没有拉伸的概念
//“当我们使用UIImage类去读取我们的图片的时候，他读取了高质量的Retina版本的图片。但是当我们用CGImage来设置我们的图层的内容时，拉伸这个因素在转换的时候就丢失了。不过我们可以通过手动设置contentsScale来修复这个问题”
	blueLayer.contentsGravity = kCAGravityCenter;
	blueLayer.contentsScale = image.scale;
	blueLayer.masksToBounds = YES;
	
//手动设置contentsScale，适配Retina屏幕
//	blueLayer.contentsScale = [UIScreen mainScreen].scale;
	
	[self.layerView.layer addSublayer:blueLayer];
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
