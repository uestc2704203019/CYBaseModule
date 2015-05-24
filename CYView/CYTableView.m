//
//  CYTableView.m
//  CYBaseProject
//
//  Created by chai on 15-5-24.
//  Copyright (c) 2015年 chai. All rights reserved.
//

#import "CYTableView.h"

@implementation CYTableView

+ (CYTableView *)tableView
{
    CYTableView *tableView = [[CYTableView alloc] init];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    return tableView;
}

- (void)setHasLine:(BOOL)hasLine
{
    _hasLine = hasLine;
    if (_hasLine) {
        if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
            [self setSeparatorInset:UIEdgeInsetsZero];
        }
    }else{
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
