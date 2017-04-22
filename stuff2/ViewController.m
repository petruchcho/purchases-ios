//
//  ViewController.m
//  stuff2
//
//  Created by user on 22.04.17.
//  Copyright © 2017 edu.self. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addAddButtonWithTitle:@"Purchases"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  @brief set lef bar button with custom title
 */
- (void)addAddButtonWithTitle:(NSString *)title {
    UINavigationBar *myNav = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 420, 80)];
    [self.view addSubview:myNav];
    
    
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Add new", nil) style: UIBarButtonItemStylePlain target:self action:@selector(addButtonPressed:)];
    
    UINavigationItem *navigItem = [[UINavigationItem alloc] initWithTitle:title];
    navigItem.rightBarButtonItem = addButton;
    myNav.items = [NSArray arrayWithObjects: navigItem,nil];
}

- (void) addButtonPressed {
    
}

@end
