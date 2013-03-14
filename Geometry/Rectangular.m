//
//  Rectangular.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Rectangular.h"

@implementation Rectangular
-(id) init:(NSString *)name andEdgesOne:(float)edgesOne andEdgesTwo:(float)edgesTwo{
    if(self=[super init]){
        _arrayEdges = (float *) malloc(2 * sizeof(float));
        _arrayEdges[0] = edgesOne;
        _arrayEdges[1] = edgesTwo;
        _name = name;
    }
    return  self;
}
-(float) perimeter{
    return (_arrayEdges[0] + _arrayEdges[1])*2;
}

-(float) area{
    return _arrayEdges[0] * _arrayEdges[1];
}
@end
