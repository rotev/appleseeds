#coding: utf-8

class SectionsController < ApplicationController
  active_scaffold :"section" do |conf|
  	conf.nested.add_link :pages, label: "עמודים"
    conf.columns.exclude :created_at, :updated_at
  end
end
