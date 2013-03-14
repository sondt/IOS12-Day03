//
//  Parallelogram.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Parallelogram.h"

@implementation Parallelogram
-(id) init:(NSString *)name andEdgesOne:(float)edgesOne andEdgesTwo:(float)edgesTwo andEdgesThree:(float)edgesThree andEgesFour:(float)edgesFour andHeight:(float)height{
    
    if (self = [super init]) {
        _arrayEdges = (float*) malloc(5 * sizeof(float));
        _arrayEdges[0] = edgesOne;
        _arrayEdges[1] = edgesTwo;
        _arrayEdges[2] = edgesThree;
        _arrayEdges[3] = edgesFour;
        _arrayEdges[4] = height;
        _name = name;
    }
return self;
    
}
-(float) area{
    return _arrayEdges[4] * ((_arrayEdges[1] + _arrayEdges[3])/2);
}

-(float) perimeter{
    return _arrayEdges[1] + _arrayEdges[0] + _arrayEdges[2] + _arrayEdges[3];
}
@end
