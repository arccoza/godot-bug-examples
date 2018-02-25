# RayCast2D detects collision shapes even if they are disabled

If a ray intersects a collision shape it always registers a collision, even if the shape is disabled through the editor `disabled` prop or with the `shape_owner_set_disabled` method call.
