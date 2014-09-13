#!/usr/bin/env ruby

$LOAD_PATH << ::File.dirname(__FILE__)
require 'rpc.pb'
require 'protobuf'

request = Socketrpc::Request.new;
request[:service_name] = "Tssest"
request[:method_name] = "ttt"

bytes = request.encode

print "After encode: ", bytes, "\n"

request_verify = Socketrpc::Request.new;
request_verify.decode(bytes);

print "After decode: service_name => " , request_verify.service_name,
    " , method_name => " , request_verify.method_name , "\n"


