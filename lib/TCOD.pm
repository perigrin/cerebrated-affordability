use FFI::Platypus;
use Object::Pad;

class TCOD { 
    has $ffi = FFI::Platypus->new(api => 1, lib => 'tcod');
}

