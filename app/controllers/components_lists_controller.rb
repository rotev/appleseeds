#coding: utf-8

class ComponentsListsController < ApplicationController
  active_scaffold :"components_list" do |conf|
  	conf.nested.add_link :components, label: "רכיבים"
  end
end
