//
//  Triangle.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

-(id) init:(NSString *)name andEdgesOne:(float)edgesOne andEdgesTwo:(float)edgesTwo andEdgesThree:(float)edgesThree{
    if(self = [super init]){
        _arrayEdges = (float *)malloc(3 * sizeof(float));
       // _arrayEdges = float[3];
        _arrayEdges[0] = edgesOne;
        _arrayEdges[1] = edgesTwo;
        _arrayEdges[2] = edgesThree;
        _name = name;
    }
    return self;
}
-(float) perimeter{
      return _arrayEdges[0] + _arrayEdges[1] + _arrayEdges[2];
    
}
-(float) area{
    float s;
    float per = [self perimeter];
    s = sqrt( per * (per- _arrayEdges[0]) * (per - _arrayEdges[1]) * (per - _arrayEdges[2]));    
    return s;
}
@end
