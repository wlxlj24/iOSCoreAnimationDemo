//
//  ViewController06.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/2.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController06.h"
#import "Masonry.h"


@interface ViewController06 ()

@property (nonatomic,readwrite,strong) NSTimer *timer;

@property (nonatomic,readwrite,strong) UIView *containView;

@property (nonatomic,readwrite,strong) UIImageView *secondIV;	//秒针

@end

@implementation ViewController06

- (void)viewDidLoad {
    [super viewDidLoad];

	self.containView = ({
		UIView *view = [UIView new];
		[self.view addSubview:view];
		[view mas_makeConstraints:^(MASConstraintMaker *make) {
			make.centerX.mas_equalTo(view.superview);
			make.centerY.mas_equalTo(view.superview);
			make.size.mas_equalTo(CGSizeMake(200, 200));
		}];
		view.backgroundColor = [UIColor darkGrayColor];
		view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"zhongpan"].CGImage);
		
		view;
	});
	
	self.secondIV = ({
		UIImageView *IV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fenzhen"]];
		[self.containView addSubview:IV];
		[IV mas_makeConstraints:^(MASConstraintMaker *make) {
			make.size.mas_equalTo(CGSizeMake(50, 100));
			make.top.mas_equalTo(IV.superview.mas_top).offset(25);
			make.bottom.mas_equalTo(IV.superview.mas_centerY).offset(10);
			make.centerX.mas_equalTo(IV.superview.mas_centerX);
			
		}];
		
		IV.layer.anchorPoint = CGPointMake(0.5, 1);
		
		IV;
	});
	
	
	self.timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(secondPass) userInfo:nil repeats:YES];
	[[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
	
}

-(void)secondPass{
	
	//convert time to hours, minutes and seconds
	NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	NSUInteger units = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
	NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
	//calculate second hand angle
	CGFloat secsAngle = (components.second / 60.0) * M_PI * 2.0;
	//rotate hands
	self.secondIV.transform = CGAffineTransformMakeRotation(secsAngle);
	
}


@end
