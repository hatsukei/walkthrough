//
//  ViewController.m
//  ExampleUI
//
//  Created by Vuong, Arron on 2015-09-17.
//  Copyright (c) 2015 Vuong, Arron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)AlloBouton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *nomAChanger;
@property (weak, nonatomic) IBOutlet UITextField *champsPrenom;

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

- (IBAction)AlloBouton:(UIButton *)sender {
    _nomAChanger.text = self.champsPrenom.text;
    NSLog(@"Log dans la méthode AlloBouton");
    [self.champsPrenom resignFirstResponder];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Ceci est une alerte" message:[[NSString alloc] initWithFormat:@"Ceci est une alerte pour vous, \n%@", self.nomAChanger.text] delegate:nil cancelButtonTitle:@"Ceci est un bouton" otherButtonTitles:nil];
    [alert show];
}
- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}
@end
