//
//  ViewController.m
//  DemoAlertView
//
//  Created by Phoenix004 on 10/12/16.
//  Copyright © 2016 Phoenix004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   UIButton *firstbutton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [firstbutton setFrame:CGRectMake(130.0, 80.0, 120.0, 30.0)];
    [firstbutton setTitle:@"First Button" forState:UIControlStateNormal];
    [firstbutton setBackgroundColor:[UIColor yellowColor]];
    [firstbutton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [firstbutton addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstbutton];
    
}

-(IBAction)btnClicked:(id)sender
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title" message:@"Enter all fields" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancel];
     [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
