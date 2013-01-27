class DocsController < ApplicationController
  def about
  end

  def examples
    @chart = Quacky::PieChartBuilder.new
    @chart.add_data( { "label" => "Category A", "value" => 20 } )
    @chart.add_data( { "label" => "Category B", "value" => 60 } )
  end
end
