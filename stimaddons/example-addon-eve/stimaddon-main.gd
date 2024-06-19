extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print($AddonConfig.addon_name + " main scene added as child")

# App icon pressed
func _on_AddonBarIcon_pressed() -> void:
	$WindowDialog.visible = !$WindowDialog.visible

# Typing states
func _on_typing_started():
	$WindowDialog/VBoxContainer/TypingStatus.text = ("Typing started...")

func _on_typing_ended():
	$WindowDialog/VBoxContainer/TypingStatus.text = ("Typing ended...")

func _on_typing_idle():
	$WindowDialog/VBoxContainer/TypingStatus.text = ("Typing idle...")	

# General events
func _on_progress_milestone_reached(completion_ratio, word_count):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Completion ratio: " + completion_ratio as String + " | Word count: " + word_count as String	

func _on_write_body_cleared():
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Write body cleared"
		
func _on_text_exported(text, file_path):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Text exported \"" + text.left(24) + "...\" to " + file_path

func _on_text_copied(text):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Text copied \"" + text.left(24) + "...\""

func _on_panel_state_changed(panel_state):
		$WindowDialog/VBoxContainer/ProgressStatus.text = "Panel state changed: " + panel_state
	
func _on_progress_bar_visibility_changed(visibility):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Progress bar visibility changed: " + visibility
		
func _on_fullscreen_state_changed(fullscreen_state):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Fullscreen state changed: " + fullscreen_state
	
func _on_viewport_window_changed(width, height):
	$WindowDialog/VBoxContainer/ProgressStatus.text = "Viewport window changed: (" + width as String + ", " + height as String + ")"
	
# Options changes
func _on_word_count_goal_changed(new_goal):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("New word count goal: " + new_goal as String)
		
func _on_theme_changed(theme_info):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Theme changed: " + theme_info as String)

func _on_background_state_changed(background_state):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Background state: " + background_state)

func _on_background_changed(new_bg_location):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Background changed: " + new_bg_location)

func _on_font_changed(new_font_location):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Font changed: " + new_font_location)
		
func _on_font_size_changed(new_size):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Font size changed: " + new_size as String)
		
func _on_typing_sound_changed(new_sound):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Typing sound changed: " + new_sound as String)

func _on_typing_volume_changed(new_volume):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Typing volume changed: " + new_volume as String)
		
func _on_soundscape_sound_changed(new_sound):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Soundscape sound changed: " + new_sound as String)

func _on_soundscape_volume_changed(new_volume):
	$WindowDialog/VBoxContainer/ProgressStatus.text = ("Soundscape volume changed: " + new_volume as String)
		

