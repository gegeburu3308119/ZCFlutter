//
//  ViewController.m
//  TextTwo
//
//  Created by 张葱 on 2019/8/23.
//  Copyright © 2019 张葱. All rights reserved.
//

#import "ViewController.h"

#import <Flutter/Flutter.h>
#import "DemoRouter.h"
#import <flutter_boost/FlutterBoostPlugin.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)gotoFir:(id)sender {
    
//    [DemoRouter.sharedRouter openPage:@"second" params:@{} animated:NO completion:^(BOOL finished) {
//
//    }];
    FLBFlutterViewContainer *vc = FLBFlutterViewContainer.new;
    [vc setName:@"second" params:@{}];
    vc.title = @"flutter 页面";
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    

    
   
}

@end
