//
//  CYCommon.h
//  CYBase
//
//  Created by longyuan on 15/4/24.
//  Copyright (c) 2015年 ly. All rights reserved.
//

#pragma mark =========字体及颜色的一些基本设定============

//获取RGB颜色
#define CYColor(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

//根据字体名字以及大小获取Font
#define CYFont(n,s) [UIFont fontWithName:n size:s];

//获取系统字体
#define CYSystemFont(s) [UIFont systemFontOfSize:s]

//根据字体线宽以及大小获取字体
#define CYWeightFont(s,w) [UIFont systemFontOfSize:s weight:w]

//获取粗体字体
#define CYBoldSystemFont(s) [UIFont boldSystemFontOfSize:n]


#pragma mark ===========获取系统信息===========

//或取系统ios应用的版本号
#define CYSystemVersion [UIDevice currentDevice].systemVersion.floatValue

//获取应用版本号
#define CYSystem(n) CYSystemVersion>n?YES:NO

//获取屏幕宽度
#define CYScreenWidth [UIScreen mainScreen].bounds.size.width

//获取屏幕高度
#define CYScreenHeight [UIScreen mainScreen].bounds.size.height
