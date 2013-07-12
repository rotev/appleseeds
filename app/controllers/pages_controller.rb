#coding: utf-8

class PagesController < ApplicationController
  active_scaffold :"page" do |conf|
    conf.nested.add_link :components_lists, label: "רשימות רכיבים"

    conf.columns.exclude :created_at, :updated_at
  end
end
