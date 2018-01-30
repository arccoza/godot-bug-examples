extends Node


func _ready():
	var node = null
	
	print("\n----Original standard node----\n")
	
	# Check the scripted node for exports and scripts.
	# It has one modified export value, and one script.
	node = $Sprite
	node.test = "NEW VALUE 1"
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Duplicated standard node----\n")
	
	# Duplicate the scripted node, and check for exports and scripts.
	# It has the same modified export value and script.
	node = node.duplicate()
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Original CustomWithoutArgs node----\n")
	
	# Check the custom node for exports and scripts.
	# It has one modified export value, and one script.
	node = CustomWithoutArgs.new()
	node.test = "NEW VALUE 2"
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Duplicated CustomWithoutArgs node----\n")
	
	# Duplicate the custom node, and check for exports and scripts.
	# It has the same modified export value and script.
	node = node.duplicate()
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Original CustomWithOptionalArgs node----\n")
	
	# Check the custom node for exports and scripts.
	# It has one modified export value, and one script.
	node = CustomWithOptionalArgs.new("p")
	node.test = "NEW VALUE 3"
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Duplicated CustomWithOptionalArgs node----\n")
	
	# Duplicate the custom node, and check for exports and scripts.
	# It has the same modified export value and script.
	node = node.duplicate()
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Original CustomWithRequiredArgs node----\n")
	
	# Check the custom node for exports and scripts.
	# It has one modified export value, and one script.
	node = CustomWithRequiredArgs.new("p")
	node.test = "NEW VALUE 4"
	print(node.get_script())
	print(node.test)
	node.hello()
	
	print("\n----Duplicated CustomWithRequiredArgs node----\n")
	
	# Duplicate the custom node, and check for exports and scripts.
	# Checks fail, cannot duplicate a node that requires constructor args.
	node = node.duplicate()
	print(node.get_script())
	print(node.test)
	node.hello()


class CustomWithoutArgs extends Node2D:
	export var test = "TEST"
	
	func _init():
		pass
	
	func hello():
		print("hello")


class CustomWithOptionalArgs extends Node2D:
	export var test = "TEST"
	
	func _init(p=null):
		pass
	
	func hello():
		print("hello")


class CustomWithRequiredArgs extends Node2D:
	export var test = "TEST"
	
	func _init(p):
		pass
	
	func hello():
		print("hello")
