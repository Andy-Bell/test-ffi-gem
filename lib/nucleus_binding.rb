require "nucleus_binding/version"
require 'ffi'

module NucleusBinding
  class Error < StandardError; end
  # Your code goes here...

  extend FFI::Library
  ffi_lib File.expand_path(__dir__ + '/target/release/libnucleus.' + FFI::Platform::LIBSUFFIX)

  attach_function :hello_world, [], :void
  attach_function :add_numbers, [:uint, :uint], :uint
end
