class DocsController < ApplicationController
  def about
    @pie_chart = Quacky::PieChartBuilder.new
  end

  def examples
    @pie_chart = Quacky::PieChartBuilder.new
    @pie_chart.add_data( { "label" => "Category A", "value" => 20 } )
    @pie_chart.add_data( { "label" => "Category B", "value" => 60 } )
    
    example_data = [
      { time: Time.now, data: 50 },
      { time: Time.now + 1, data: 75 }
    ]
    @line_graph = Quacky::LineGraphBuilder.new(example_data)
  end
end
