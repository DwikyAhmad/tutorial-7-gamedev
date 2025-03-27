extends Node3D

var items = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass

func add_item(name: String, quantity: int):
    if items.has(name):
        items[name] += quantity  # Tambahkan jumlah jika item sudah ada
    else:
        items[name] = quantity   # Buat entri baru jika item belum ada
    
    print("Inventory updated: ", items)
