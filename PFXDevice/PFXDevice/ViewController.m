//
//  ViewController.m
//  PFXDevice
//
//  Created by succorer on 2016. 1. 8..
//  Copyright © 2016년 succorer. All rights reserved.
//

#import "ViewController.h"
#import "PFXDevice.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;


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

- (IBAction)infoButtonTouched:(id)sender {
    NSDictionary *dict = [PFXDevice deviceInfo];
    [self.textView setText:[dict description]];
    NSLog(@"%@", dict);
}
@end
