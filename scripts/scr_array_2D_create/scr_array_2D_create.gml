function array_2d_create(_height, _length, _value = 0) {
   var _array;
   array[_height] = 0;
  for(var _i = 0; _i < _height; ++_i) {
    _array[_i] = array_create(_length, _value);
  }
  return _array;
}