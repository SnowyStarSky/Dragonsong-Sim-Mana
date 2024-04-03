# Copyright 2024 by William Craycroft
# All rights reserved.
# This file is released under "GNU General Public License 3.0".
# Please see the LICENSE file that should have been included as part of this package.

extends OptionButton


func _ready() -> void:
	#var saved_index: int = SavedVariables.save_data["p6"]["wb_1"]
	#if saved_index == SavedVariables.wb_1.DEFAULT:
		#saved_index = SavedVariables.get_default("p6", "wb_1")
	selected = SavedVariables.get_data("p6", "wb_1")
	#selected = SavedVariables.save_data["p6"]["wb_1"]


func _on_item_selected(index : int) -> void:
	GameEvents.emit_variable_saved("p6", "wb_1", index)
