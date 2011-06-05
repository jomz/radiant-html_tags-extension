require File.dirname(__FILE__) + '/../spec_helper'

describe "Html Tags" do
  dataset :home_page, :pages
  
  it '<r:p> should wrap it\'s content with <p> tags' do
    pages(:home).should render('<r:p>foo</r:p>').as('<p>foo</p>')
  end

  it '<r:ul:children:each:li:link /> should render as a list with a link in an li per child page' do
    pages(:parent).should render('<r:ul:children:each:li:link />').as('<ul><li><a href="/parent/child/">Child</a></li><li><a href="/parent/child-2/">Child 2</a></li><li><a href="/parent/child-3/">Child 3</a></li></ul>')
  end

end