//
//  ViewController.m
//  AutolayoutTest
//
//  Created by Pablo Parejo Camacho on 18/4/15.
//  Copyright (c) 2015 Pablo Parejo Camacho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftMarginConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightMarginConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:.5 animations:^{
        self.leftMarginConstraint.constant = 10;
        self.rightMarginConstraint.constant = 10;
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 animations:^{
            self.leftMarginConstraint.constant = 56;
            self.rightMarginConstraint.constant = 56;
            [self.view layoutIfNeeded];
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
