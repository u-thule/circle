class CirclesController < ApplicationController
  # GET /circles
  # GET /circles.xml
  def index
    @circles = Circle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @circles }
    end
  end

  # GET /circles/1
  # GET /circles/1.xml
  def show
    @circle = Circle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @circle }
    end
  end

  # GET /circles/new
  # GET /circles/new.xml
  def new
    @circle = Circle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @circle }
    end
  end

  # GET /circles/1/edit
  def edit
    @circle = Circle.find(params[:id])
  end

  # POST /circles
  # POST /circles.xml
  def create
    @circle = Circle.new(params[:circle])

    respond_to do |format|
      if @circle.save
        flash[:notice] = 'Circle was successfully created.'
        format.html { redirect_to(@circle) }
        format.xml  { render :xml => @circle, :status => :created, :location => @circle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @circle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /circles/1
  # PUT /circles/1.xml
  def update
    @circle = Circle.find(params[:id])

    respond_to do |format|
      if @circle.update_attributes(params[:circle])
        flash[:notice] = 'Circle was successfully updated.'
        # format.html { redirect_to(@circle) }
        format.html { redirect_to :action => "show" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @circle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /circles/1
  # DELETE /circles/1.xml
  def destroy
    @circle = Circle.find(params[:id])
    @circle.destroy

    respond_to do |format|
      format.html { redirect_to(circles_url) }
      format.xml  { head :ok }
    end
  end
end
