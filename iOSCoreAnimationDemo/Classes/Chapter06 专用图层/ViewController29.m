//
//  ViewController29.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/17.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController29.h"
#import "LayerLabel.h"

@interface ViewController29 ()

@end

@implementation ViewController29

- (void)viewDidLoad {
    [super viewDidLoad];

	LayerLabel *lbl = [[LayerLabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
	lbl.center = self.view.center;
	[self.view addSubview:lbl];
	
	lbl.font = [UIFont systemFontOfSize:15.0f];
	lbl.text = @"fjkda;lskfjdska;jfkds;akljfdsl;a";
	lbl.textColor = [UIColor redColor];
	
}


@end
