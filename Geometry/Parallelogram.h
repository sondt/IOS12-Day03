//
//  Parallelogram.h
//  Geometry
//
//  Created by sondt-mac on 3/14/13.
//  Copyright (c) 2013 sondt. All rights reserved.
//

#import "Geometry.h"

@interface Parallelogram : Geometry
-(id) init:   (NSString *)name
andEdgesOne:(float) edgesOne
andEdgesTwo:(float) edgesTwo
andEdgesThree:(float) edgesThree
andEgesFour:(float) edgesFour
andHeight:(float) height;
@end
