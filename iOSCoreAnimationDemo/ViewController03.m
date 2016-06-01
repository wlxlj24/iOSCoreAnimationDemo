//
//  ViewController03.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController03.h"
#import "Masonry.h"

@interface ViewController03 ()

@property (nonatomic,readwrite,strong) UIView *v1;
@property (nonatomic,readwrite,strong) UIView *v2;
@property (nonatomic,readwrite,strong) UIView *v3;
@property (nonatomic,readwrite,strong) UIView *v4;

@end

@implementation ViewController03

- (void)viewDidLoad {
    [super viewDidLoad];

	self.v1 = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.top.mas_equalTo(v.superview.mas_top).mas_offset(100);
			make.left.mas_equalTo(v.superview.mas_left).mas_offset(50);
		}];
		v.backgroundColor = [UIColor redColor];
		[self addSpriteImage:[UIImage imageNamed:@"lanyangyang"] withContentRect:CGRectMake(0, 0, 0.5, 0.5) toLayer:v.layer];
		
		v;
	});
	
	self.v2 = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.top.mas_equalTo(v.superview.mas_top).mas_offset(100);
			make.right.mas_equalTo(v.superview.mas_right).mas_offset(-50);
		}];
		v.backgroundColor = [UIColor redColor];
		[self addSpriteImage:[UIImage imageNamed:@"lanyangyang"] withContentRect:CGRectMake(0.5, 0, 0.5, 0.5) toLayer:v.layer];
		
		v;
	});
	
	self.v3 = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.bottom.mas_equalTo(v.superview.mas_bottom).mas_offset(-100);
			make.left.mas_equalTo(v.superview.mas_left).mas_offset(50);
		}];
		v.backgroundColor = [UIColor redColor];
		[self addSpriteImage:[UIImage imageNamed:@"lanyangyang"] withContentRect:CGRectMake(0, 0.5, 0.5, 0.5) toLayer:v.layer];
		
		v;
	});
	
	self.v4 = ({
		UIView *v = [UIView new];
		[self.view addSubview:v];
		
		[v mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(100, 100));
			make.bottom.mas_equalTo(v.superview.mas_bottom).mas_offset(-100);
			make.right.mas_equalTo(v.superview.mas_right).mas_offset(-50);
		}];
		v.backgroundColor = [UIColor redColor];
		[self addSpriteImage:[UIImage imageNamed:@"lanyangyang"] withContentRect:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:v.layer];
		
		v;
	});
	
	
	
}

-(void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer{
	layer.contents = (__bridge id _Nullable)image.CGImage;
	layer.contentsGravity = kCAGravityResizeAspect;
	layer.contentsRect = rect;
}






@end
