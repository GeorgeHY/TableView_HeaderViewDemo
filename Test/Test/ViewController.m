//
//  ViewController.m
//  Test
//
//  Created by iwind on 14-12-5.
//  Copyright (c) 2014年 iwind. All rights reserved.
//

#import "ViewController.h"

#define HeaderViewHeight 200 //头视图的高
#define ScreenSize self.view.bounds.size //当前屏幕size
@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView * tv;

@end

static NSString * cellIdentifier = @"Mycell";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView * hv = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ScreenSize.width, HeaderViewHeight)];
//    [hv setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:hv];
    self.tv = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, ScreenSize.width   , ScreenSize.height)];
    self.tv.delegate = self;
    self.tv.dataSource = self;
    self.tv.bounces = NO;
    self.tv.showsVerticalScrollIndicator = NO;
    [self.view addSubview:self.tv];
    [self.tv registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return HeaderViewHeight;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = @"haha";
    return cell;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView;
    if (section == 0) {
        headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, ScreenSize.width, HeaderViewHeight)];
        [headerView setBackgroundColor:[UIColor redColor]];
        return headerView;
    }
    
    return headerView;
    
}



@end
