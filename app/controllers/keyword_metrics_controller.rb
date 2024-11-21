class KeywordMetricsController < ApplicationController
  before_action :set_keyword_metric, only: %i[ show edit update destroy ]

  # GET /keyword_metrics or /keyword_metrics.json
  def index
    @keyword_metrics = KeywordMetric.all
  end

  # GET /keyword_metrics/1 or /keyword_metrics/1.json
  def show
  end

  # GET /keyword_metrics/new
  def new
    @keyword_metric = KeywordMetric.new
  end

  # GET /keyword_metrics/1/edit
  def edit
  end

  # POST /keyword_metrics or /keyword_metrics.json
  def create
    @keyword_metric = KeywordMetric.new(keyword_metric_params)

    respond_to do |format|
      if @keyword_metric.save
        format.html { redirect_to @keyword_metric, notice: "Keyword metric was successfully created." }
        format.json { render :show, status: :created, location: @keyword_metric }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @keyword_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keyword_metrics/1 or /keyword_metrics/1.json
  def update
    respond_to do |format|
      if @keyword_metric.update(keyword_metric_params)
        format.html { redirect_to @keyword_metric, notice: "Keyword metric was successfully updated." }
        format.json { render :show, status: :ok, location: @keyword_metric }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @keyword_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keyword_metrics/1 or /keyword_metrics/1.json
  def destroy
    @keyword_metric.destroy!

    respond_to do |format|
      format.html { redirect_to keyword_metrics_path, status: :see_other, notice: "Keyword metric was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword_metric
      @keyword_metric = KeywordMetric.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def keyword_metric_params
      params.expect(keyword_metric: [ :keyword, :volume ])
    end
end
