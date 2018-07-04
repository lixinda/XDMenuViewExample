//
//  ViewController.m
//  XDMenuViewExample
//
//  Created by 李信达 on 2018/7/3.
//  Copyright © 2018年 李信达. All rights reserved.
//

#import "ViewController.h"
#import "XDMenuView.h"
#define kZRColor_MenuBackColor kCOLOR_HEX(0x3d3d3d)
#define kCOLOR_HEX(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]

@interface ViewController ()

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

- (IBAction)didClickShowMenu:(id)sender {
    
    XDMenuView * menu = [XDMenuView menuViewWithSender:sender];
    menu.backColor = kZRColor_MenuBackColor;
    XDMenuItem * item1 = [XDMenuItem item:@"全部项目" icon:@"1-index-pop-searchguide" clickBlock:^(XDMenuItem *item, XDMenuView *menu) {
        UIViewController * vc = [[UIViewController alloc]init];
        vc.title = @"全部项目";
        [self.navigationController pushViewController:vc animated:YES];
        
    }];
    XDMenuItem * item2 = [XDMenuItem item:@"偏好设置" icon:@"1-index-pop-searchguide" clickBlock:^(XDMenuItem *item, XDMenuView *menu) {
        UIViewController * vc = [[UIViewController alloc]init];
        vc.title = @"偏好设置";
        [self.navigationController pushViewController:vc animated:YES];
    }];
    XDMenuItem * item3 = [XDMenuItem item:@"我的收藏" icon:@"1-index-pop-myorder" clickBlock:^(XDMenuItem *item, XDMenuView *menu) {
        UIViewController * vc = [[UIViewController alloc]init];
        vc.title = @"我的收藏";
        [self.navigationController pushViewController:vc animated:YES];
    }];
    XDMenuItem * item4 = [XDMenuItem item:@"提交项目需求" icon:@"2-1-del" clickBlock:^(XDMenuItem *item, XDMenuView *menu) {
        UIViewController * vc = [[UIViewController alloc]init];
        vc.title = @"提交项目需求";
        [self.navigationController pushViewController:vc animated:YES];
    }];
    [menu addItem:item1];
    [menu addItem:item2];
    [menu addItem:item3];
    [menu addItem:item4];
    
    //弹出
    [self presentViewController:menu animated:YES completion:nil];
    
}



@end
