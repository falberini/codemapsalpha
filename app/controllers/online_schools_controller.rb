class OnlineSchoolsController < ApplicationController

	def index
		@onlineschools = OnlineSchool.all
	end

	def new
		@onlineschool = OnlineSchool.new
	end

	def create
		new_onlineschool = OnlineSchool.create(params[:onlineschool])
		redirect_to new_onlineschool
	end

	def show
		@onlineschool = OnlineSchool.find(params[:id])
	end

end
