class MoreForLessRulesController < ApplicationController
  before_action :set_more_for_less_rule, only: [:show, :edit, :update, :destroy]

  def index
    @more_for_less_rules = MoreForLessRule.all
  end

  def new
    @more_for_less_rule = MoreForLessRule.new
  end

  def edit
  end

  def create
    @more_for_less_rule = MoreForLessRule.new(more_for_less_rule_params)

    respond_to do |format|
      if @more_for_less_rule.save
        format.html { redirect_to more_for_less_rules_url, notice: 'Rule was successfully created.' }
        format.json { render :show, status: :created, location: @more_for_less_rule }
      else
        format.html { render :new }
        format.json { render json: @more_for_less_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @more_for_less_rule.update(more_for_less_rule_params)
        format.html { redirect_to more_for_less_rules_url, notice: 'Rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @more_for_less_rule }
      else
        format.html { render :edit }
        format.json { render json: @more_for_less_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @more_for_less_rule.destroy
    respond_to do |format|
      format.html { redirect_to more_for_less_rules_url, notice: 'Rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_more_for_less_rule
      @more_for_less_rule = MoreForLessRule.find(params[:id])
    end

    def more_for_less_rule_params
      params.require(:more_for_less_rule).permit(
        :client_id, :product_id, :eligible_qtty, :collectible_qtty
      )
    end
end
