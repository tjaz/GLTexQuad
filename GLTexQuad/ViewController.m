//
//  ViewController.m
//  GLTexQuad
//
//  Created by Tjaz Hrovat on 15/12/15.
//  Copyright (c) 2015 hrovat. All rights reserved.
//

#import "ViewController.h"
#import "GLView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    float scaleFactor = [[UIScreen mainScreen] scale];
    CGRect bounds = [[UIScreen mainScreen] bounds];
    //bounds = CGRectMake(-bounds.size.width*scaleFactor/2, 0, bounds.size.width*scaleFactor, bounds.size.height*scaleFactor);
    GLView* glView = [[GLView alloc] initWithFrame:bounds];
    glView.layer.contentsScale = scaleFactor;
    [glView setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview: glView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
