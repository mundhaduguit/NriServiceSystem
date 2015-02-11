class Admin::ServiceController < ApplicationController
def index
  
end
def new 
  @service=Service.new
  
end
def create
  render action => :new
end
end