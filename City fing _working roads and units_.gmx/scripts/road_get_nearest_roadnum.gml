///road_get_nearest_roadnum(x,y)

var roadnum = 1
var test = 0
var shortest = -1

var short_roadnum = 1

var c = 1
while c <= obj_global.roadcount{
    var roadnum = c
    var i = 0
    while i < obj_global.pointnum[roadnum]{
        x1 = obj_global.roadpointx[roadnum,i]
        y1 = obj_global.roadpointy[roadnum,i]
        test = point_distance(x1,y1,argument0,argument1)
        
        if test<shortest or shortest=-1{
            shortest=test
            short_roadnum = roadnum
        }
        
        i+=1
    }
    c+=1
}

return(short_roadnum)
