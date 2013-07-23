#coding: utf-8

class PagesController < ApplicationController
  active_scaffold :"page" do |conf|
    conf.nested.add_link :components_lists, label: "רשימות רכיבים"
    conf.nested.add_link :sub_pages, label: "תתי עמודים"

    conf.columns.exclude :created_at, :updated_at, :sub_pages, :parent_page, :components_lists

    conf.columns[:image].form_ui = :paperclip
    conf.columns[:text].form_ui = :text_editor
   #  conf.columns[:text].options = {
	  #   tinymce: { 
	  #     theme: 'advanced'
	  #     #editor_css: '/product_editor.css'
	  #   }
	  # }

	  conf.update.columns.exclude :components_lists, :page_template, :slug, :parent_page, :sub_pages, :section
    conf.update.columns.add :page_template_id #, :parent_page_id

    conf.create.columns.exclude :components_lists, :page_template, :slug, :parent_page, :sub_pages, :section
    conf.create.columns.add :page_template_id, :parent_page_id, :section_id

  end
end
