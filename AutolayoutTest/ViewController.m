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
    
    
    int margin = self.leftMarginConstraint.constant;
    [UIView animateWithDuration:.6 animations:^{
        self.leftMarginConstraint.constant = 10;
        self.rightMarginConstraint.constant = 10;
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 animations:^{
            self.leftMarginConstraint.constant = margin;
            self.rightMarginConstraint.constant = margin;
            [self.view layoutIfNeeded];
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
