///resedential(direction,x,y)
var cdirection = argument0
var x1 = argument1
var y1 = argument2

if cdirection = 1{
    instance_create(x1,y1,obj_normal_road_start)
    instance_create(x1,y1-80,obj_normal_road_point)
    instance_create(x1-20,y1-100,obj_normal_road_point)
    instance_create(x1-100,y1-100,obj_normal_road_point)
    
    var i = 0
    while i<4{
        instance_create(x1-24,y1-16 *i -8,obj_building)
        i += 1
    }
    
    var i = 0
    while i<4{
        instance_create(x1-16 *i -45,y1-75,obj_building)
        i += 1
    }
}

if cdirection = 1{
    instance_create(x1,y1,obj_normal_road_start)
    instance_create(x1,y1-80,obj_normal_road_point)
    instance_create(x1-20,y1-100,obj_normal_road_point)
    instance_create(x1-100,y1-100,obj_normal_road_point)
    
    var i = 0
    while i<4{
        instance_create(x1-24,y1-16 *i -8,obj_building)
        i += 1
    }
    
    var i = 0
    while i<4{
        instance_create(x1-16 *i -45,y1-75,obj_building)
        i += 1
    }
}

var side = cdirection -1

return(side)
