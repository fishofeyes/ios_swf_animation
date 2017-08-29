//
//  ViewController.m
//  swf_animation
//
//  Created by Bolo on 2017/8/29.
//  Copyright © 2017年 Bolo. All rights reserved.
//

#import "ViewController.h"
#import "SwiffImport.h"
#import "SWFPlayMovieController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"bundle:8.swf"]];
    if(url != nil){
        SWFPlayMovieController *vc = [[SWFPlayMovieController alloc] initWithURL:url];
        [self addChildViewController:vc];
        [self.view addSubview:vc.view];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
