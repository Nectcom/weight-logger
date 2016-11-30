require "spec_helper"

describe UsersController do
    # befor do
    #     @user = build(:user)
    #     post "/login", {name: @user.name, password: @user.password}
    # end

    describe "GET #index" do
        before do
            get :index
        end

        it "assigns all user to @user" do
            user = User.create! attributes_for(:user)
            expect(assigns(:users)).to eq([user])
        end

        it "renders the index page" do
            expect(response).to render_template(:index)
        end

        it "has a 200 status code" do
            expect(response.status).to eq 200
        end
    end

    describe "GET #show" do
        before do
            @user = User.create! attributes_for(:user)
            get :show, {id: @user.to_param}
        end

        it "assigns all user to @user" do
            expect(assigns(:user)).to eq(@user)
        end

        it "renders the index page" do
            expect(response).to render_template(:show)
        end

        it "has a 200 status code" do
            expect(response.status).to eq 200
        end
    end

    describe "GET #new" do
        before do
            get :new
        end

        it "assigns all user to @user" do
            expect(assigns(:user)).to be_a_new(User)
        end

        it "renders the index page" do
            expect(response).to render_template(:new)
        end

        it "has a 200 status code" do
            expect(response.status).to eq 200
        end
    end

    describe "GET #edit" do
        before do
            @user = User.create! attributes_for(:user)
            get :edit, {id: @user.to_param}
        end

        it "assigns all user to @user" do
            expect(assigns(:user)).to eq(@user)
        end

        it "renders the index page" do
            expect(response).to render_template(:edit)
        end

        it "has a 200 status code" do
            expect(response.status).to eq 200
        end
    end

    describe "POST #create" do
        context "with invaild attributes" do
            before do
                get :new
            end

            it "does not add new user to database" do
                expect{
                    post :create , user: attributes_for(:invaild_user)
                }.not_to change(User, :count)
            end

            it "renders #new template" do
                post :create, user: attributes_for(:invaild_user)

                expect(response).to render_template :new
            end
        end

        context "with vaild attributes" do
            it "adds new user to database" do
                expect{
                    post :create, user: attributes_for(:user)
                }.to change(User, :count).by(1)
            end

            it "assigns new user to @user" do
                post :create, user: attributes_for(:user)
                expect(assigns(:user)).to be_a User
                expect(assigns(:user)).to be_persisted
            end

            it "redirects to GET #show/:id" do
                post :create, user: attributes_for(:user)
                expect(response).to redirect_to(assigns[:user])
            end
        end
    end

    describe "POST #update"
    describe "DELETE #destroy"

end