//
//  ViewController27.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/17.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController27.h"

@interface ViewController27 ()

@property (nonatomic,readwrite,strong) UIView *labelView;

@end

@implementation ViewController27

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.labelView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		[var mas_makeConstraints:^(MASConstraintMaker *make) {
			make.center.mas_equalTo(var.superview);
			make.size.mas_equalTo(CGSizeMake(300, 300));
		}];
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		CATextLayer *textLayer = [CATextLayer layer];
		textLayer.frame = CGRectMake(0, 0, 300, 300);
		[var.layer addSublayer:textLayer];
		
		textLayer.foregroundColor = [UIColor blackColor].CGColor;
		textLayer.alignmentMode = kCAAlignmentJustified;
		textLayer.wrapped = YES;
		
		UIFont *font = [UIFont systemFontOfSize:15.0f];
		CFStringRef fontName = (__bridge CFStringRef)((font.fontName));
		CGFontRef fontRef = CGFontCreateWithFontName(fontName);
		textLayer.font = fontRef;
		textLayer.fontSize = font.pointSize;
		CGFontRelease(fontRef);
		
		NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \\ elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \\ leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc elementum, libero ut porttitor dictum, diam odio congue lacus, vel \\ fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \\ lobortis";
		textLayer.string = text;
		
		var;
	});
	
}


@end
