if Input.is_action_just_pressed():
  get_parent().add_child(load("res://console_a.tscn").instance())
  #get_tree().paused = true
  var input_disabled


  _unhandled_input()
