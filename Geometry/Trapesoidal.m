//
//  Trapesoidal.m
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Trapesoidal.h"

@implementation Trapesoidal
///edgesOne --> canh day; edgesTwo --> canh doi
-(id) init:(NSString *)name andEdgesOne:(float)edgesOne andEdgesTwo:(float)edgesTwo andHeight:(float)height{
    if(self = [super init]){
        _arrayEdges = (float*) malloc(3 * sizeof(float));
        _arrayEdges[0] = edgesOne;
        _arrayEdges[1] = edgesTwo;
        _arrayEdges[2] = height;
        _name = name;
    }
        return self;
}
-(float) area{
    return _arrayEdges[0] * _arrayEdges[2];
}
/*
 perimeter
 */
-(float) perimeter{
    return (_arrayEdges[0] + _arrayEdges[1]) * 2;
}
@end
