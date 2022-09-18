extends Node

var stats = PlayerStats
onready var rect = $ColorRect
onready var killedLabel = $KilledLabel
onready var winLabel = $WinLabel
export var batCount = 3

func _ready():
	stats.connect("no_health", self, "playerKilled")
	pass
	
func playerKilled():
	rect.visible = true
	killedLabel.visible = true
