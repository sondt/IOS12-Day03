//
//  Geometry.h
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Geometry : NSObject
{
    NSString * _name;
    float * _arrayEdges;
    
}
-(float) area;
-(float) perimeter;
-(NSString*) getName;
@end
