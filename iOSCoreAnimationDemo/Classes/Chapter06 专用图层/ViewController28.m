//
//  ViewController28.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/17.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController28.h"
#import <CoreText/CoreText.h>

@interface ViewController28 ()

@property (nonatomic,readwrite,strong) UIView *textView;

@end

@implementation ViewController28

- (void)viewDidLoad {
    [super viewDidLoad];

	self.textView = ({
		UIView *var = [UIView new];
		[self.view addSubview:var];
		var.frame = CGRectMake(0, 0, 300, 300);
		var.center = var.superview.center;
		var.backgroundColor = [UIColor groupTableViewBackgroundColor];
		
		CATextLayer *textLayer = [CATextLayer layer];
		textLayer.frame = CGRectMake(0, 0, 300, 300);
		textLayer.contentsScale = [UIScreen mainScreen].scale;
		[var.layer addSublayer:textLayer];
		
		textLayer.alignmentMode = kCAAlignmentJustified;
		textLayer.wrapped = YES;
		
		UIFont *font = [UIFont systemFontOfSize:15.0f];
		
		NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar  leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc  elementum, libero ut porttitor dictum, diam odio congue lacus, vel  fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet  lobortis";
		
		//create attributed string
		NSMutableAttributedString *string = nil;
		string = [[NSMutableAttributedString alloc] initWithString:text];
		
		//convert UIFont to CTFont
		CFStringRef fontName = (__bridge CFStringRef)(font.fontName);
		CGFloat fontSize = font.pointSize;
		CTFontRef fontRef = CTFontCreateWithName(fontName, fontSize, NULL);
		
		//set text attributes
		NSDictionary *attribs = @{
									(__bridge id)kCTForegroundColorAttributeName:(__bridge id)[UIColor blackColor].CGColor,
									(__bridge id)kCTFontAttributeName: (__bridge id)fontRef
									};
				
		[string setAttributes:attribs range:NSMakeRange(0, [text length])];
		attribs = @{
					  (__bridge id)kCTForegroundColorAttributeName: (__bridge id)[UIColor redColor].CGColor,
					  (__bridge id)kCTUnderlineStyleAttributeName: @(kCTUnderlineStyleSingle),
					  (__bridge id)kCTFontAttributeName: (__bridge id)fontRef
					  };
		[string setAttributes:attribs range:NSMakeRange(6, 5)];
		
		//release the CTFont we created earlier
		CFRelease(fontRef);
		
		//set layer text
		textLayer.string = string;
		
		var;
	});
	
}


@end
