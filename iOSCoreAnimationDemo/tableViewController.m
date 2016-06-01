//
//  tableViewController.m
//  iOSCoreAnimationDemo
//
//  Created by TailC on 16/6/1.
//  Copyright © 2016年 TailC. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()

@property (nonatomic,readwrite,strong) NSArray *dataArr;
@property (nonatomic,readwrite,strong) NSArray *sectionArr;

@end

@implementation tableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
	//获取plist文件
	NSString *path  = [[NSBundle mainBundle] pathForResource:@"ChaptList" ofType:@"plist"];
	self.dataArr = [NSArray arrayWithContentsOfFile:path];
	
	self.sectionArr = self.dataArr;
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSArray *row = self.sectionArr[section];
    return row.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
	
	NSString *title = [NSString stringWithFormat:@"第%ld章",section+1];
	return title;
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
	
	NSArray *section = self.sectionArr[indexPath.section];
	NSDictionary *row = section[indexPath.row];
	
	cell.textLabel.text = [NSString stringWithFormat:@"%@",[row objectForKey:@"title"]];
	cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",[row objectForKey:@"viewControllerName"]];
	
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	
	NSArray *section = self.sectionArr[indexPath.section];
	NSDictionary *row = section[indexPath.row];
	NSString *vcName = [row objectForKey:@"viewControllerName"];
	
	Class vc = NSClassFromString(vcName);
	
	UIViewController *aVC = [vc new];
	aVC.view.backgroundColor = [UIColor whiteColor];
	
	if (vc) {
		[self.navigationController pushViewController:aVC animated:YES];
	}
	
}

@end
