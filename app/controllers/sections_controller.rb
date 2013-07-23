#coding: utf-8

class SectionsController < ApplicationController
  active_scaffold :"section" do |conf|
  	conf.nested.add_link :pages, label: "עמודים"
    conf.columns.exclude :created_at, :updated_at, :pages

    # conf.columns[:section_type].form_ui = :select
    # conf.columns[:section_type].options = {options: [["הכוונה לעמוד הראשון", "redirect"], ["עמוד לובי", "page"]]}

    conf.update.columns.exclude :pages, :slug, :page_template
    conf.update.columns.add :page_template_id
  end
end
