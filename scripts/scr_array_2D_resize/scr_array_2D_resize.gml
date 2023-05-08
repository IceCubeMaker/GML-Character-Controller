function array_2d_resize(_array, _height, _length) {
	// Resize height
	array_resize(_array, _height);
	
        // Resize Lengths 
	if (_length != undefined) {
		for(var _i = 0; _i < _height; ++_i) {
			array_resize(_array[@ _i], _length);
		}
	}
}