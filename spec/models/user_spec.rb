require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params) {{name: "さとる",age: 1}}
    # let(:params2) {{name: "さとる",age: 15}}
    # let(:params3) {{name: "さとる",age: 20}}
    # let(:params4) {{name: "さとる",age: -1}}

    it "年齢１：ユーザーの名前が「〜ちゃん」と取得できること" do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "さとるちゃん"
    end

    it "年齢１５：ユーザーの名前が「〜君」と取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "さとる君"
    end

    it "年齢２０：ユーザーの名前が「〜さん」と取得できること" do
      params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "さとるさん"
    end

    it "年齢 -1：「不正な値です」と取得できること" do
      params.merge!(age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end

  end
end
