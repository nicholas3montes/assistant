class InputsController < ApplicationController
  require 'json'
  
  def index
    directory = '/home/nicholas/folder'

    @files = Dir.glob("#{directory}/*.json").map do |file|
      File.read(file)
    end
  end
end
