# Cannot duplicate() custom nodes which require constructor params

When a custom node has a constructor with required params / arguments, `duplicate()` 
creates the base type of the custom node, without the custom node script attached, 
or any functionality or property data that was connected with it.

This makes some sense, since it wouldn't be possible to know what the original args 
passed to the constructor were, so `duplicate()` can't construct a copy of the custom node. 
But there really should be some mention of this in the docs, for `duplicate()` and 
custom nodes / plugins. And at least a warning should be emitted when duplicating this 
kind of node.
