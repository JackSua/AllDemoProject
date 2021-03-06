//
//  OneViewController.m
//  AllDemo
//
//  Created by suzq on 14/12/23.
//  Copyright (c) 2014年 suzq. All rights reserved.
//

#import "OneViewController.h"

typedef double (^resultBlock)(double);

@interface OneViewController ()<UINavigationControllerDelegate>

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.title = @"BlockTest";
    [self doBlockTest];
    
}

- (void)doBlockTest
{
    resultBlock rstBlock = ^double(double x){
        return x+1;
    };
    double result = rstBlock(4);
    NSLog(@"result = %f",result);
    
    int(^rstblock1)(int) = ^int(int x){
        return x+2;
    };
    NSLog(@"rstblock1 = %d",rstblock1(4));
    
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
