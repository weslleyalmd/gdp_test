class PriceDiscountRulesController < ApplicationController
  before_action :set_price_discount_rule, only: [:show, :edit, :update, :destroy]

  def index
    @price_discount_rules = PriceDiscountRule.all
  end

  def new
    @price_discount_rule = PriceDiscountRule.new
  end

  def edit
  end

  def create
    @price_discount_rule = PriceDiscountRule.new(price_discount_rule_params)

    respond_to do |format|
      if @price_discount_rule.save
        format.html { redirect_to price_discount_rules_url, notice: 'Rule was successfully created.' }
        format.json { render :show, status: :created, location: @price_discount_rule }
      else
        format.html { render :new }
        format.json { render json: @price_discount_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @price_discount_rule.update(price_discount_rule_params)
        format.html { redirect_to price_discount_rules_url, notice: 'Rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_discount_rule }
      else
        format.html { render :edit }
        format.json { render json: @price_discount_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @price_discount_rule.destroy
    respond_to do |format|
      format.html { redirect_to price_discount_rules_url, notice: 'Rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_price_discount_rule
      @price_discount_rule = PriceDiscountRule.find(params[:id])
    end

    def price_discount_rule_params
      params.require(:price_discount_rule).permit(
        :client_id, :product_id, :eligible_qtty, :new_price
      )
    end
end
