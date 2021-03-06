# -*- encoding : utf-8 -*-
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

describe ItemRecordsController do

  # This should return the minimal set of attributes required to create a valid
  # ItemRecord. As you add validations to ItemRecord, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "item_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ItemRecordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all item_records as @item_records" do
      item_record = ItemRecord.create! valid_attributes
      get :index, {}, valid_session
      assigns(:item_records).should eq([item_record])
    end
  end

  describe "GET show" do
    it "assigns the requested item_record as @item_record" do
      item_record = ItemRecord.create! valid_attributes
      get :show, {:id => item_record.to_param}, valid_session
      assigns(:item_record).should eq(item_record)
    end
  end

  describe "GET new" do
    it "assigns a new item_record as @item_record" do
      get :new, {}, valid_session
      assigns(:item_record).should be_a_new(ItemRecord)
    end
  end

  describe "GET edit" do
    it "assigns the requested item_record as @item_record" do
      item_record = ItemRecord.create! valid_attributes
      get :edit, {:id => item_record.to_param}, valid_session
      assigns(:item_record).should eq(item_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ItemRecord" do
        expect {
          post :create, {:item_record => valid_attributes}, valid_session
        }.to change(ItemRecord, :count).by(1)
      end

      it "assigns a newly created item_record as @item_record" do
        post :create, {:item_record => valid_attributes}, valid_session
        assigns(:item_record).should be_a(ItemRecord)
        assigns(:item_record).should be_persisted
      end

      it "redirects to the created item_record" do
        post :create, {:item_record => valid_attributes}, valid_session
        response.should redirect_to(ItemRecord.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved item_record as @item_record" do
        # Trigger the behavior that occurs when invalid params are submitted
        ItemRecord.any_instance.stub(:save).and_return(false)
        post :create, {:item_record => { "item_id" => "invalid value" }}, valid_session
        assigns(:item_record).should be_a_new(ItemRecord)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ItemRecord.any_instance.stub(:save).and_return(false)
        post :create, {:item_record => { "item_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested item_record" do
        item_record = ItemRecord.create! valid_attributes
        # Assuming there are no other item_records in the database, this
        # specifies that the ItemRecord created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ItemRecord.any_instance.should_receive(:update_attributes).with({ "item_id" => "1" })
        put :update, {:id => item_record.to_param, :item_record => { "item_id" => "1" }}, valid_session
      end

      it "assigns the requested item_record as @item_record" do
        item_record = ItemRecord.create! valid_attributes
        put :update, {:id => item_record.to_param, :item_record => valid_attributes}, valid_session
        assigns(:item_record).should eq(item_record)
      end

      it "redirects to the item_record" do
        item_record = ItemRecord.create! valid_attributes
        put :update, {:id => item_record.to_param, :item_record => valid_attributes}, valid_session
        response.should redirect_to(item_record)
      end
    end

    describe "with invalid params" do
      it "assigns the item_record as @item_record" do
        item_record = ItemRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ItemRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => item_record.to_param, :item_record => { "item_id" => "invalid value" }}, valid_session
        assigns(:item_record).should eq(item_record)
      end

      it "re-renders the 'edit' template" do
        item_record = ItemRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ItemRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => item_record.to_param, :item_record => { "item_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested item_record" do
      item_record = ItemRecord.create! valid_attributes
      expect {
        delete :destroy, {:id => item_record.to_param}, valid_session
      }.to change(ItemRecord, :count).by(-1)
    end

    it "redirects to the item_records list" do
      item_record = ItemRecord.create! valid_attributes
      delete :destroy, {:id => item_record.to_param}, valid_session
      response.should redirect_to(item_records_url)
    end
  end

end
