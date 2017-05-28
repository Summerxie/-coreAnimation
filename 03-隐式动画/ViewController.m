//
//  ViewController.m
//  03-隐式动画
//
//  Created by apple on 17/2/17.

//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CALayer *layer = [CALayer new];
    layer.backgroundColor = [UIColor greenColor].CGColor;
    layer.frame = CGRectMake(50, 100, 100,100);
    [self.view.layer addSublayer:layer];
    
    _layer = layer;
    
    
   
    
//    CALayer *layer = [[CALayer alloc] init];
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.bounds = CGRectMake(0, 0, 100, 100);
//    layer.position = CGPointMake(50, 50);
//    [self.view.layer addSublayer:layer];
//    
//    self.layer = layer;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
//    [CATransaction begin];
//    [CATransaction setDisableActions:YES];
//    _layer.position = CGPointMake(arc4random()%300, arc4random()%500);
//    _layer.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0  blue:arc4random_uniform(256)/255.0  alpha:1].CGColor;
//    
//    [CATransaction commit];
//    
    
    [CATransaction begin]; // 开启
    [CATransaction setDisableActions:YES];
    
    self.layer.position = CGPointMake(arc4random() % 300, arc4random() % 500);
    self.layer.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1].CGColor;
    
    [CATransaction commit]; // 提交
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
