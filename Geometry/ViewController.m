//
//  ViewController.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "ViewController.h"
#import "Triangle.h"
#import "Trapesoidal.h"
#import "Geometry.h"
#import "Square.h"
#import "Rectangular.h"
#import "Ellipse.h"
#import "Circle.h"
#import "Parallelogram.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)actionDrawTriangle:(id)sender {
    Triangle *triangle = [[Triangle alloc] init:@"Hình tam giác" andEdgesOne:10 andEdgesTwo:15 andEdgesThree:30];    
    Trapesoidal *trapesoidal = [[Trapesoidal alloc]init:@"Hình bình hành" andEdgesOne:30 andEdgesTwo:20 andHeight:25];    
    Square *square= [[Square alloc] init:@"Hình vuông" andEdgesOne:10 andEdgesTwo:10];
    Rectangular *rectangular = [[Rectangular alloc]init:@"Hình chữ nhật" andEdgesOne:10 andEdgesTwo:20];
    Ellipse *eclip = [[Ellipse alloc]init:@"Hình eclip" andEdgesOne:30 andEdgesTwo:10];
    Circle *circle= [[Circle alloc]init:@"Hình tròn" andEdges:20];
    Parallelogram *parallelogram = [[Parallelogram alloc]init:@"Hình thang" andEdgesOne:30 andEdgesTwo:10 andEdgesThree:20 andEgesFour:15 andHeight:18];
    
    NSArray *sharps= @[triangle, trapesoidal,square, rectangular,eclip, circle, parallelogram];
    for (Geometry * sharp in sharps) {
        float per = [sharp perimeter];
        float area = [sharp area];
        NSLog(@"%@ có chu vi là: %f và diện tích là: %f", [sharp getName], per,area);
    }
    
    //[trapesoidal p ]
    
}

@end
