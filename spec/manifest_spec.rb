require 'spec_helper'

describe Sprockets::Bower::Manifest do
  let(:env){ Sprockets::Environment.new }
  let(:bowerrc_path) { File.expand_path('../fixtures/.bowerrc', __FILE__) }

  it "should add path" do
    Sprockets::Bower::Manifest.new('/my/path').configure env
    env.paths.should include('/my/path')
  end

  it "should load from .bowerrc file" do
    Sprockets::Bower::Manifest.load(bowerrc_path).configure env
    expanded_path = File.expand_path('../fixtures/my/bower/assets', __FILE__)
    env.paths.should include(expanded_path)
  end
end