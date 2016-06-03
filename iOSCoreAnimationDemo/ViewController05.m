//
//  ViewController05.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController05.h"
#import "Masonry.h"


@interface ViewController05 ()

@property (nonatomic,readwrite,strong) UIView *layerView;
@property (nonatomic,readwrite,strong) CALayer *blueLayer;
@property (nonatomic,readwrite,strong) CALayer *orrangeLayer;

@end

@implementation ViewController05

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.layerView = ({
		UIView *view = [UIView new];
		[self.view addSubview:view];
		[view mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(200, 200));
			make.center.mas_equalTo(view.superview);
		}];
		view.backgroundColor = [UIColor redColor];
		
		view;
	});
	
	self.blueLayer = ({
		CALayer *layer = [CALayer layer];
		[self.layerView.layer addSublayer:layer];
		layer.frame = CGRectMake(50, 50, 100, 100);
		layer.backgroundColor = [UIColor blueColor].CGColor;
		layer.contentsScale = [UIScreen mainScreen].scale;
		layer.delegate = self;
		
		layer;
	});
	
	self.orrangeLayer = ({
		CALayer *layer = [CALayer layer];
		[self.blueLayer addSublayer:layer];
		layer.frame = CGRectMake(25, 25, 50, 50);
		layer.backgroundColor = [UIColor orangeColor].CGColor;
		layer.contentsScale = [UIScreen mainScreen].scale;
		layer.delegate = self;
		
		layer;
	});
	
	
	
	[self.blueLayer display];
	[self.orrangeLayer display];
	
}

/** If you do not want to set the contents of the layer directly using the displayLayer: method, you can implement this method and use it to draw the contents of your layer. You might prefer this method in cases where the layer’s content is already dynamic and must be regenerated.
 
 The context may be clipped to protect valid layer content. Subclasses that wish to find the actual region to draw can call the CGContextGetClipBoundingBox function.
 */
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
	
	//线宽
	CGContextSetLineWidth(ctx, 10.0f);
	//线颜色
	CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
	//画椭圆
	CGContextStrokeEllipseInRect(ctx, layer.bounds);
	
}

@end
