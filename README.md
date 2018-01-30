# Cannot duplicate() custom nodes with required constructor params

When a custom node has a constructor with required params / arguments `duplicate()`
creates the base type of the custom node, without the custom node script attached,
and any functionality or property data that was connected with it.
