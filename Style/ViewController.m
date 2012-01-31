//
//  ViewController.m
//  Style
//
//  Created by Dan on 27/01/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Homework";
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"yellow.jpg"]]];
    
    
    app = [[UIApplication sharedApplication] delegate];
    
    mess = [[UITextField alloc] initWithFrame:CGRectMake(75, 150, 200, 45)];
    [app.window addSubview:mess];

    background = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    background.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    
    [app.window addSubview:background];
    
    av = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [av setCenter:self.view.center];
    [app.window addSubview:av];
    [av startAnimating];
    
    [self performSelector:@selector(removeView) withObject:nil afterDelay:3];
}

-(void) removeView{
    [av stopAnimating];
    [av removeFromSuperview];
    [background removeFromSuperview];
    mess.font = [UIFont fontWithName:@"Courier-Bold" size:14];
    mess.text = @"No homework today!!";
    
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
