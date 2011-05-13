# ICBM (Integrated Content Block Management)

The intended goal of this gem is to provide a tool that makes it easy to add simple content managment features to pages on your site. 

## Rails 3 Installation Instructions
Add the following to your gemfile

	gem 'icbm'

## Usage
Currently this gem requires your app to have a model by the name of "ContentBlock" which has 2 columns "key" and "value"

In your erb view you can place the following code

	<%= block_content_for('name_of_this_content_block') do %>
	  Default view code goes here.
	<% end %>

In your haml view you can place the following code

	= block_content_for('name_of_this_content_block') do
	  Default view code goes here.

The result if there is no ContentBlock record with a key of 'name_of_this_content_block' will be the result of the default block of view code wrapped in a div

The result if there is a ContentBlock record with a key of 'name_of_this_content_block' will be the value field wrapped in a div


Copyright (c) 2009-2011 Nathan Humbert, released under the MIT license
