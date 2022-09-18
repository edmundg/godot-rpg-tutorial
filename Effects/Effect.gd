extends AnimatedSprite

func _ready():
	#From, signal, to object, to method
	self.connect("animation_finished", self, "_on_animation_finished")
	play("Animate")

func _on_animation_finished():
	queue_free()
