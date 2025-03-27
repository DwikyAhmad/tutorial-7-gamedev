# Item.gd
extends Area3D

@export var item_name: String = "Default Item"  # Nama item
@export var quantity: int = 1                  # Jumlah item

func _on_area_entered(area):
    # Ketika pemain masuk ke area item
    if area.is_in_group("Player"):
        # Kirim item ke inventory pemain
        Inventory.add_item(item_name, quantity)
        
        # Hancurkan item dari scene
        queue_free()
