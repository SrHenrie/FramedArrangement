//
//  ViewController.m
//  FramedArrangement
//
//  Created by Sarah Henrie on 6/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong)UIView *redView;
@property(nonatomic, strong)UIView *orangeView;
@property(nonatomic,strong) UIView *blueView;
@property(nonatomic,strong) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];

    self.orangeView = [UIView new];
    self.orangeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.orangeView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];

    [self layoutSquares];

    // Do any additional setup after loading the view.
}
-(void)layoutSquares{
    self.redView.frame = CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.width/2);
    self.orangeView.frame = CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.width/2);
    self.blueView.frame = CGRectMake(0, self.view.frame.size.width/2, self.view.frame.size.width/2,self.view.frame.size.width/2);
    self.yellowView.frame = CGRectMake(self.view.frame.size.width/2, self.view.frame.size.width/2, self.view.frame.size.width/2, self.view.frame.size.width/2);
    
   [self performSelector:@selector(horizontalRectangles) withObject:self afterDelay:2.0 ];
}
-(void)horizontalRectangles{
    self.redView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/4);
    self.orangeView.frame = CGRectMake(0, self.view.frame.size.height*.25, self.view.frame.size.width, self.view.frame.size.height/4);
    self.blueView.frame = CGRectMake(0, self.view.frame.size.height*.50, self.view.frame.size.width, self.view.frame.size.height/4);
    self.yellowView.frame = CGRectMake(0, self.view.frame.size.height*.75, self.view.frame.size.width, self.view.frame.size.height/4);
    
    [self performSelector:@selector(verticalRectangles) withObject:self afterDelay:2.0 ];
}
-(void)verticalRectangles{
    self.redView.frame = CGRectMake(0, 0, self.view.frame.size.width/4, self.view.frame.size.height);
    self.orangeView.frame = CGRectMake(self.view.frame.size.width*.25, 0, self.view.frame.size.width/4, self.view.frame.size.height);
    self.blueView.frame = CGRectMake(self.view.frame.size.width*.50, 0, self.view.frame.size.width/4, self.view.frame.size.height);
    self.yellowView.frame = CGRectMake(self.view.frame.size.width*.75, 0, self.view.frame.size.width/4, self.view.frame.size.height);
    
    [self performSelector:@selector(diagonalSquares) withObject:self afterDelay:2.0 ];
}
-(void)diagonalSquares{
    self.redView.frame = CGRectMake(0, 0, self.view.frame.size.width/4, self.view.frame.size.height/4);
    self.orangeView.frame = CGRectMake(self.view.frame.size.width/4, self.view.frame.size.height/4, self.view.frame.size.width*.25, self.view.frame.size.height*.25);
    self.blueView.frame = CGRectMake(self.view.frame.size.width*.50, self.view.frame.size.height*.50, self.view.frame.size.width/4, self.view.frame.size.height/4);
    self.yellowView.frame = CGRectMake(self.view.frame.size.width*.75, self.view.frame.size.height*.75, self.view.frame.size.width/4, self.view.frame.size.height/4);
    
    [self performSelector:@selector(layoutSquares) withObject:self afterDelay:2.0 ];
    
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
