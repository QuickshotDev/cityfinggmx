//resize_view(view height)

global.aspect = window_get_height() / window_get_width()

global.view_height = argument0
global.view_width = argument0 / global.aspect
