#!/usr/bin/env ruby

require "./ruler"
require "logger"

#-----------------------------------------------------------------------------
R("Checking how method_missing works")
logger = Logger.new File.new("./data_robj23.log", "w")

logger.warn "hello"
