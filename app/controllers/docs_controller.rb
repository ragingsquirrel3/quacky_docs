class DocsController < ApplicationController
  def about
  end

  def examples
    @pie_chart = Quacky::PieChartBuilder.new
    @pie_chart.add_data( { "label" => "Category A", "value" => 20 } )
    @pie_chart.add_data( { "label" => "Category B", "value" => 60 } )
    
    example_data = [
      { Time.now =>  50 },
      { Time.now + 1 => 75 }
    ]
    @line_graph = Quacky::LineGraphBuilder.new(example_data)
  end
end
