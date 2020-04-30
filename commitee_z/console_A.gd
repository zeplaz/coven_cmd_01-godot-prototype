extends Control

onready var input_box = get_node("input_cmd_line")
onready var output_box = get_node("output_A")
onready var command_handler = get_node("command_handler_A")

func _ready():
	input_box.grab_focus()

func process_cmd_A(text):
	var list_stringz = text.split(" ")
	list_stringz = Array(list_stringz)

	for i in range(list_stringz.count("")):
		list_stringz.erase("")

		if list_stringz.size() == 0:
			print("CMDLIS_TEMPTYEPZ:-ERRZ-|-(-:+++0##33#")
			return

		var cmd_word = list_stringz.pop_front()

	for c in command_handler.vaild_commandz:
		if c[0] == cmd_word:
			if list_stringz.size()!= c[1]:
				output_text(str('-###_ERZ:_CKLI_UPOVLA:LZKKZ___; overlaing... ord/::',cmd_word,'rekz_ELK:UKLZ>PARMZ:::OV_::',c[i].size()))
				return
			for j in range(string_list.size()):
				if  not check_type(string_list[j], c[1[j]]):
			 		return
			command_handler.callv(cmd_word,list_stringz)


func check_type(string,type):
	if type == command_handler.ARG_TNT:
		return  string.is_valid_intger()

	if type == command_handler.ARG_FLOAT:
		output_text("flpoatz")
		return string.is_calid_float()

	if type == command_handler.ARG_STRING:
		return true

	if type == command_handler.ARG_BOOL:
		return (string == "true" or string == "false")
	return false;

func output_text(text):
	output_box.text = str(output_box.text,"\n",text)

func _on_input_cmd_line_text_entered(new_user_text):
	input_box.clear()
	process_cmd_A(new_user_text)



		#		for w in words:
			#			output_text(w)


			#	output_text(str("num::termz:",words.size())):
