///draw_cube(x1,y1,z1,x2,y2,z2,sprite)
var x1 = argument0
var y1 = argument1
var z1 = argument2
var x2 = argument3
var y2 = argument4
var z2 = argument5
var sprite = argument6

//=========== quad setup ===========
//in left corner
if x1 <= global.van_p_x && y1 <= global.van_p_y{
    var quad = 1
}

//in top right corner
if x1 >= global.van_p_x && y1 <= global.van_p_y{
    var quad = 2
}

//in bottom right corner
if x1 >= global.van_p_x && y1 >= global.van_p_y{
    var quad = 3
}

//in bottom left corner
if x1 <= global.van_p_x && y1 >= global.van_p_y{
    var quad = 4
}


//========== depth ordering =========
if quad=1
    depth=(-1000-((x1+x2)/2)-((y1+y2)/2));
    
if quad=2
    depth=(-1000+((x1+x2)/2)-((y1+y2)/2));
    
if quad=3
    depth=(-1000+((x1+x2)/2)+((y1+y2)/2));
    
if quad=4
    depth=(-1000-((x1+x2)/2)+((y1+y2)/2));
    
//bottom face
var heightfix1 = z1*(point_distance(x1,y1,global.van_p_x,global.van_p_y))/(view_wview[0]/2)//(point_distance(x1,y1,global.van_p_x,global.van_p_y)  -point_distance(x1,y1,global.van_p_x,global.van_p_y)/z1 )/2
var heightfix2 = z1*(point_distance(x2,y1,global.van_p_x,global.van_p_y))/(view_wview[0]/2)//(point_distance(x2,y1,global.van_p_x,global.van_p_y)  -point_distance(x2,y1,global.van_p_x,global.van_p_y)/z1 )/2
var heightfix3 = z1*(point_distance(x2,y2,global.van_p_x,global.van_p_y))/(view_wview[0]/2)
var heightfix4 = z1*(point_distance(x1,y2,global.van_p_x,global.van_p_y))/(view_wview[0]/2)
//top face
var heightfix5 = z2*(point_distance(x1,y1,global.van_p_x,global.van_p_y))/(view_wview[0]/2)
var heightfix6 = z2*(point_distance(x2,y1,global.van_p_x,global.van_p_y))/(view_wview[0]/2)
var heightfix7 = z2*(point_distance(x2,y2,global.van_p_x,global.van_p_y))/(view_wview[0]/2)
var heightfix8 = z2*(point_distance(x1,y2,global.van_p_x,global.van_p_y))/(view_wview[0]/2)

//bottom face
var dx1 = lengthdir_x(heightfix1, point_direction(global.van_p_x,global.van_p_y,x1,y1))
var dy1 = lengthdir_y(heightfix1, point_direction(global.van_p_x,global.van_p_y,x1,y1))
var dx2 = lengthdir_x(heightfix2, point_direction(global.van_p_x,global.van_p_y,x2,y1))
var dy2 = lengthdir_y(heightfix2, point_direction(global.van_p_x,global.van_p_y,x2,y1))
var dx3 = lengthdir_x(heightfix3, point_direction(global.van_p_x,global.van_p_y,x2,y2))
var dy3 = lengthdir_y(heightfix3, point_direction(global.van_p_x,global.van_p_y,x2,y2))
var dx4 = lengthdir_x(heightfix4, point_direction(global.van_p_x,global.van_p_y,x1,y2))
var dy4 = lengthdir_y(heightfix4, point_direction(global.van_p_x,global.van_p_y,x1,y2))

//top face
var dx5 = lengthdir_x(heightfix5, point_direction(global.van_p_x,global.van_p_y,x1,y1))
var dy5 = lengthdir_y(heightfix5, point_direction(global.van_p_x,global.van_p_y,x1,y1))
var dx6 = lengthdir_x(heightfix6, point_direction(global.van_p_x,global.van_p_y,x2,y1))
var dy6 = lengthdir_y(heightfix6, point_direction(global.van_p_x,global.van_p_y,x2,y1))
var dx7 = lengthdir_x(heightfix7, point_direction(global.van_p_x,global.van_p_y,x2,y2))
var dy7 = lengthdir_y(heightfix7, point_direction(global.van_p_x,global.van_p_y,x2,y2))
var dx8 = lengthdir_x(heightfix8, point_direction(global.van_p_x,global.van_p_y,x1,y2))
var dy8 = lengthdir_y(heightfix8, point_direction(global.van_p_x,global.van_p_y,x1,y2))


//========== draw block ==============
if y2 > y2+dy8{
    draw_sprite_pos(sprite,0,dx8+x1,dy8+y2,dx7+x2,dy7+y2,dx3+x2,dy3+y2,dx4+x1,dy4+y2,1)//south side
}

if x2 > x2+dx6{
    draw_sprite_pos(sprite,1,dx6+x2,dy6+y1,dx2+x2,dy2+y1,dx3+x2,dy3+y2,dx7+x2,dy7+y2,1) //east side
}

if x1 < x1+dx5{
    draw_sprite_pos(sprite,2,dx1+x1,dy1+y1,dx5+x1,dy5+y1,dx8+x1,dy8+y2,dx4+x1,dy4+y2,1)//west side
}

if y1 < y1+dy5{
    draw_sprite_pos(sprite,3,dx1+x1,dy1+y1,dx2+x2,dy2+y1,dx6+x2,dy6+y1,dx5+x1,dy5+y1,1)//north side
}

draw_sprite_pos(sprite,4,dx5+x1,dy5+y1,dx6+x2,dy6+y1,dx7+x2,dy7+y2,dx8+x1,dy8+y2,1)//top