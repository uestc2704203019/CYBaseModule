//
//  CYBaseViewController.m
//  CYBase
//
//  Created by longyuan on 15/4/24.
//  Copyright (c) 2015年 ly. All rights reserved.
//

#import "CYBaseViewController.h"

@interface CYBaseViewController ()

@end

@implementation CYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super performSelector:@selector(createUI) withObject:nil afterDelay:0.0f];
    // Do any additional setup after loading the view.
}

- (void)createUI
{}

- (void)hiddenNavigationBackBarItem
{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"";
    backItem.image = nil;
    self.navigationItem.backBarButtonItem = backItem;
    self.navigationItem.hidesBackButton = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
