extends Node3D

var col: Color = Color(Color.WHITE)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$SubViewport/SmallOrthogonalCamera.position.x = $Player.position.x
	$SubViewport/SmallOrthogonalCamera.position.z = $Player.position.z
	
	var vtex: ViewportTexture = $SubViewport.get_texture()
	var img: Image = vtex.get_image()
	var col2: Color = img.get_pixel(1,1)
	
	if col != col2:
		col = col2
		print(col)
