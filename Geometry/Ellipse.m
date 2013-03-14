//
//  Ellipse.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Ellipse.h"

@implementation Ellipse
-(id) init:(NSString *)name andEdgesOne:(float)edgesOne andEdgesTwo:(float)edgesTwo{
    if(self=[super init]){
        _arrayEdges = (float *) malloc(2 * sizeof(float));
        _arrayEdges[0] = edgesOne;
        _arrayEdges[1] = edgesTwo;
        _name = name;
    }
    return  self;
}

-(id) init:(NSString *)name andEdges:(float)edges{
    if(self=[super init]){
        _arrayEdges = (float *) malloc(2 * sizeof(float));
        _arrayEdges[0] = edges;
        _arrayEdges[1] = edges;
        _name = name;
    }
    return  self;
}

-(float) perimeter{
    
    //c ~= Pi * [ 3*(a + b) - sqrt[(3*a + b)*(a + 3*b)] ]
    ///trường hợp độ dài trục ngang bằng 2 độ dài trục dọc thì giá trị này bằng:
    //c ~= Pi * a * [9 - sqrt(35)] / 2
    //với a là bán trục ngang, b là bán trục dọc, sqrt là căn bậc 2
    float c,a,b;
    a = _arrayEdges[0];b = _arrayEdges[1];
    if(a == b * 2){
        c = M_1_PI * a * (9-sqrt(35))/2;
    }else{
        c = M_1_PI * (3*(a+b) - sqrt(((3*a)+b) * (a+(3*b))));
    }
    return c;
    
}

-(float) area{
    //s = pi * a * b
    return M_1_PI * (_arrayEdges[0]/2) * (_arrayEdges[1]/2);
}
@end
