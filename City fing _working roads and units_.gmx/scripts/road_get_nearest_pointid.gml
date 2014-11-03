///road_get_nearest_pointid(roadnum,x,y)

var closest = 0
var roadnum = argument0
var test = 0
var shortest = -1
var short_pointid = 0

i = 0
while i < obj_global.pointnum[roadnum]{
    x1 = obj_global.roadpointx[roadnum,i]
    y1 = obj_global.roadpointy[roadnum,i]
    test = point_distance(x1,y1,argument1,argument2)
    
    if test<shortest or shortest=-1{
        shortest=test
        short_pointid = i
    }
    
    i+=1
}

return(short_pointid)
