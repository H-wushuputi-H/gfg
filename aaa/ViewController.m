//
//  ViewController.m
//  aaa
//
//  Created by lanou on 16/7/11.
//  Copyright © 2016年 H. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableV = [[UITableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    self.tableV.dataSource = self;
    self.tableV.delegate = self;
    
    self.tableV.estimatedRowHeight = 100;
    
    [self.view addSubview:self.tableV];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[MyTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
    }
    
    [cell configureCellWith:@"啦啦啦" image:nil];
    
    
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
