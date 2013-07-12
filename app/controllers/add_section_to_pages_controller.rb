class AddSectionToPagesController < ApplicationController
  # GET /add_section_to_pages
  # GET /add_section_to_pages.json
  def index
    @add_section_to_pages = AddSectionToPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_section_to_pages }
    end
  end

  # GET /add_section_to_pages/1
  # GET /add_section_to_pages/1.json
  def show
    @add_section_to_page = AddSectionToPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_section_to_page }
    end
  end

  # GET /add_section_to_pages/new
  # GET /add_section_to_pages/new.json
  def new
    @add_section_to_page = AddSectionToPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_section_to_page }
    end
  end

  # GET /add_section_to_pages/1/edit
  def edit
    @add_section_to_page = AddSectionToPage.find(params[:id])
  end

  # POST /add_section_to_pages
  # POST /add_section_to_pages.json
  def create
    @add_section_to_page = AddSectionToPage.new(params[:add_section_to_page])

    respond_to do |format|
      if @add_section_to_page.save
        format.html { redirect_to @add_section_to_page, notice: 'Add section to page was successfully created.' }
        format.json { render json: @add_section_to_page, status: :created, location: @add_section_to_page }
      else
        format.html { render action: "new" }
        format.json { render json: @add_section_to_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_section_to_pages/1
  # PUT /add_section_to_pages/1.json
  def update
    @add_section_to_page = AddSectionToPage.find(params[:id])

    respond_to do |format|
      if @add_section_to_page.update_attributes(params[:add_section_to_page])
        format.html { redirect_to @add_section_to_page, notice: 'Add section to page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_section_to_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_section_to_pages/1
  # DELETE /add_section_to_pages/1.json
  def destroy
    @add_section_to_page = AddSectionToPage.find(params[:id])
    @add_section_to_page.destroy

    respond_to do |format|
      format.html { redirect_to add_section_to_pages_url }
      format.json { head :no_content }
    end
  end
end
