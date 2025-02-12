extends CollisionPolygon2D

func _ready() -> void:
	var poly := Polygon2D.new()
	poly.polygon = polygon
	add_child(poly)
