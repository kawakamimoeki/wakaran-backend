class ContactController < ApplicationController
  def create
    Contact.create(contact_params)
    redirect_to 'https://wakaran.yhmk.org/contact/thanks'
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :episode, :content)
  end
end
