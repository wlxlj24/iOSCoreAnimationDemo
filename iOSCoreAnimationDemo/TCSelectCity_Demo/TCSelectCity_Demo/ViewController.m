//
//  ViewController.m
//  TCSelectCity_Demo
//
//  Created by TailC on 16/6/14.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "ViewController.h"
#import "TLCityPickerController.h"
#import "CityViewController.h"

@interface ViewController ()<TLCityPickerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *cityPickerButton;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)onClickSelectCityBtn:(id)sender {
	
	CityViewController *controller = [[CityViewController alloc] init];
	controller.currentCityString = @"杭州";
	controller.selectString = ^(NSString *string){
		self.cityLabel.text = string;
	};
	[self presentViewController:controller animated:YES completion:nil];
	
}

- (IBAction)onClickTLCityPicker:(id)sender {
	
	TLCityPickerController *cityPickerVC = [[TLCityPickerController alloc] init];
	[cityPickerVC setDelegate:self];
	
	cityPickerVC.locationCityID = @"1400010000";
	//    cityPickerVC.commonCitys = [[NSMutableArray alloc] initWithArray: @[@"1400010000", @"100010000"]];        // 最近访问城市，如果不设置，将自动管理
	cityPickerVC.hotCitys = @[@"100010000", @"200010000", @"300210000", @"600010000", @"300110000"];
	
	[self presentViewController:[[UINavigationController alloc] initWithRootViewController:cityPickerVC] animated:YES completion:^{
		
	}];
	
}

#pragma mark - TLCityPickerDelegate
- (void) cityPickerController:(TLCityPickerController *)cityPickerViewController didSelectCity:(TLCity *)city
{
	[self.cityPickerButton setTitle:city.cityName forState:UIControlStateNormal];
	[cityPickerViewController dismissViewControllerAnimated:YES completion:^{
		
	}];
}

- (void) cityPickerControllerDidCancel:(TLCityPickerController *)cityPickerViewController
{
	[cityPickerViewController dismissViewControllerAnimated:YES completion:^{
		
	}];
}


@end
