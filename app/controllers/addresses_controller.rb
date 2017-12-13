class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new()
  end

  def create
    @student = Student.find(params[:student_id])
    @address = @student.addresses.new(address_params)
    if @address.save
      flash[:success] = "You've added an address for #{@student.name}"
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def destroy
    student = Student.find(params[:student_id])
    address = Address.find(params[:id])
    address.destroy

    redirect_to student_path(student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip, :student_id)
  end


end
