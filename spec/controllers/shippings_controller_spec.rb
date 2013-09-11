require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ShippingsController do

  # This should return the minimal set of attributes required to create a valid
  # Shipping. As you add validations to Shipping, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sender_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ShippingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all shippings as @shippings" do
      shipping = Shipping.create! valid_attributes
      get :index, {}, valid_session
      assigns(:shippings).should eq([shipping])
    end
  end

  describe "GET show" do
    it "assigns the requested shipping as @shipping" do
      shipping = Shipping.create! valid_attributes
      get :show, {:id => shipping.to_param}, valid_session
      assigns(:shipping).should eq(shipping)
    end
  end

  describe "GET new" do
    it "assigns a new shipping as @shipping" do
      get :new, {}, valid_session
      assigns(:shipping).should be_a_new(Shipping)
    end
  end

  describe "GET edit" do
    it "assigns the requested shipping as @shipping" do
      shipping = Shipping.create! valid_attributes
      get :edit, {:id => shipping.to_param}, valid_session
      assigns(:shipping).should eq(shipping)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Shipping" do
        expect {
          post :create, {:shipping => valid_attributes}, valid_session
        }.to change(Shipping, :count).by(1)
      end

      it "assigns a newly created shipping as @shipping" do
        post :create, {:shipping => valid_attributes}, valid_session
        assigns(:shipping).should be_a(Shipping)
        assigns(:shipping).should be_persisted
      end

      it "redirects to the created shipping" do
        post :create, {:shipping => valid_attributes}, valid_session
        response.should redirect_to(Shipping.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved shipping as @shipping" do
        # Trigger the behavior that occurs when invalid params are submitted
        Shipping.any_instance.stub(:save).and_return(false)
        post :create, {:shipping => { "sender_name" => "invalid value" }}, valid_session
        assigns(:shipping).should be_a_new(Shipping)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Shipping.any_instance.stub(:save).and_return(false)
        post :create, {:shipping => { "sender_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested shipping" do
        shipping = Shipping.create! valid_attributes
        # Assuming there are no other shippings in the database, this
        # specifies that the Shipping created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Shipping.any_instance.should_receive(:update_attributes).with({ "sender_name" => "MyString" })
        put :update, {:id => shipping.to_param, :shipping => { "sender_name" => "MyString" }}, valid_session
      end

      it "assigns the requested shipping as @shipping" do
        shipping = Shipping.create! valid_attributes
        put :update, {:id => shipping.to_param, :shipping => valid_attributes}, valid_session
        assigns(:shipping).should eq(shipping)
      end

      it "redirects to the shipping" do
        shipping = Shipping.create! valid_attributes
        put :update, {:id => shipping.to_param, :shipping => valid_attributes}, valid_session
        response.should redirect_to(shipping)
      end
    end

    describe "with invalid params" do
      it "assigns the shipping as @shipping" do
        shipping = Shipping.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Shipping.any_instance.stub(:save).and_return(false)
        put :update, {:id => shipping.to_param, :shipping => { "sender_name" => "invalid value" }}, valid_session
        assigns(:shipping).should eq(shipping)
      end

      it "re-renders the 'edit' template" do
        shipping = Shipping.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Shipping.any_instance.stub(:save).and_return(false)
        put :update, {:id => shipping.to_param, :shipping => { "sender_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested shipping" do
      shipping = Shipping.create! valid_attributes
      expect {
        delete :destroy, {:id => shipping.to_param}, valid_session
      }.to change(Shipping, :count).by(-1)
    end

    it "redirects to the shippings list" do
      shipping = Shipping.create! valid_attributes
      delete :destroy, {:id => shipping.to_param}, valid_session
      response.should redirect_to(shippings_url)
    end
  end

end
