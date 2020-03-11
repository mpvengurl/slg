- dashboard: hospital_pulse
  title: Hospital Pulse
  layout: newspaper
  elements:
  - name: "Texas Health and Human Services"
    type: text
    title_text: ""
    row: 0
    col: 0
    width: 5
    height: 3
  - name: "<h1>Hospital Pulse</h1>"
    type: text
    title_text: "<h1>Hospital Pulse</h1>"
    subtitle_text: Welcome to the State of Texas Department of Health and Human Service
    body_text: We are making a positive difference in the lives of the people we serve.
    row: 0
    col: 5
    width: 15
    height: 3
  - name: 'text_tile_1'
    type: text
    body_text: "<p></p>"
    row: 0
    col: 20
    width: 4
    height: 3
  - name: "<h3><center>Let's look at our locations</center><h3>"
    type: text
    title_text: "<h3><center>Let's look at our locations</center><h3>"
    body_text: ''
    row: 3
    col: 0
    width: 5
    height: 15
  - title: Hospitals By Zip Code
    name: Hospitals By Zip Code
    model: texasdhhs
    explore: hospitals
    type: looker_map
    fields: [hospitals.count, hospitals.zip]
    sorts: [hospitals.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 1
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite_streets
    map_position: fit_data
    map_latitude: 30.41492693301478
    map_longitude: -99.27795410156251
    map_zoom: 5
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [orange, yellow, red]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      City: hospitals.city
    row: 10
    col: 5
    width: 19
    height: 8
  - title: Hospitals Heatmap
    name: Hospitals Heatmap
    model: texasdhhs
    explore: hospitals
    type: looker_map
    fields: [hospitals.count, hospitals.location]
    filters:
      hospitals.location_bin_level: '9'
      hospitals.location: inside box from 40.979898069620155, -135.00000000000003
        to 21.94304553343818, -67.50000000000001
    sorts: [hospitals.count desc]
    limit: 5000
    query_timezone: America/Los_Angeles
    map_plot_mode: automagic_heatmap
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: streets
    map_position: fit_data
    map_latitude: 31.297327991404266
    map_longitude: -100.21728515625001
    map_zoom: 5
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [green, blue, red]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    note_state: collapsed
    note_display: above
    note_text: Number of Hospitals in an Area.
    listen:
      City: hospitals.city
    row: 3
    col: 5
    width: 9
    height: 7
  - title: Hospital Hotspots
    name: Hospital Hotspots
    model: texasdhhs
    explore: hospitals
    type: looker_map
    fields: [hospitals.count, hospitals.location]
    sorts: [hospitals.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: custom
    map_latitude: 30.00942935721476
    map_longitude: -97.12214469909668
    map_zoom: 7
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min:
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [green, blue, red]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    note_state: collapsed
    note_display: above
    note_text: Number of Patients visiting a Hospital
    listen:
      City: hospitals.city
    row: 3
    col: 14
    width: 10
    height: 7
  - name: Demographic Data
    type: text
    title_text: Demographic Data
    subtitle_text: Trends over time.
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 2
  - title: Supply & Cost Predictions
    name: Supply & Cost Predictions
    model: texasdhhs
    explore: drug_predictions
    type: looker_grid
    fields: [drug_predictions.total_day_supply, drug_predictions.drug_name, drug_predictions.total_drug_cost]
    sorts: [drug_predictions.total_day_supply desc]
    limit: 500
    dynamic_fields: [{table_calculation: cost_of_supply, label: Cost of Supply, expression: "${drug_predictions.total_drug_cost}/${drug_predictions.total_day_supply}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      drug_predictions.total_day_supply:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [cost_of_supply]
    note_state: collapsed
    note_display: below
    note_text: The daily top predicted drugs supply and cost
    listen: {}
    row: 20
    col: 0
    width: 9
    height: 9
  - title: Cost Per Unit
    name: Cost Per Unit
    model: texasdhhs
    explore: drug_predictions
    type: looker_bar
    fields: [drug_predictions.total_day_supply, drug_predictions.drug_name, drug_predictions.total_drug_cost]
    sorts: [drug_predictions.total_day_supply desc]
    limit: 500
    dynamic_fields: [{table_calculation: cost_of_supply, label: Cost of Supply, expression: "${drug_predictions.total_drug_cost}/${drug_predictions.total_day_supply}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: top, series: [{axisId: drug_predictions.total_day_supply,
            id: drug_predictions.total_day_supply, name: Total Day Supply}], showLabels: true,
        showValues: true, maxValue: 700000, minValue: !!null '', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 9, type: linear}, {label: !!null '',
        orientation: bottom, series: [{axisId: cost_of_supply, id: cost_of_supply,
            name: Cost of Supply}], showLabels: true, showValues: true, maxValue: 6,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 0, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    size_by_field: cost_of_supply
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    series_types:
      cost_of_supply: scatter
    point_style: circle
    series_colors:
      cost_of_supply: "#F57237"
      drug_predictions.total_day_supply: "#55A3B3"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    x_axis_label_rotation_bar: -45
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      drug_predictions.total_day_supply:
        is_active: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [drug_predictions.total_drug_cost]
    note_state: collapsed
    note_display: above
    note_text: Identify the Drug that is more expensive per unit.
    listen: {}
    row: 20
    col: 9
    width: 15
    height: 9
  - name: Drug Predictions
    type: text
    title_text: Drug Predictions
    subtitle_text: A BQML model that predicts days of supply and drug cost.
    row: 18
    col: 0
    width: 24
    height: 2
  - name: 'text_tile_2'
    type: text
    body_text: "<p></p>"
    row: 43
    col: 0
    width: 24
    height: 2
  - title: Average Length of Stay by Race
    name: Average Length of Stay by Race
    model: texasdhhs
    explore: outpatient_base
    type: looker_column
    fields: [outpatient_base.service_quarter_formatted, outpatient_base.avg_lenth_of_service,
      outpatient_base.race]
    pivots: [outpatient_base.race]
    sorts: [outpatient_base.race 0, outpatient_base.service_quarter_formatted]
    limit: 500
    column_limit: 50
    row: 31
    col: 3
    width: 8
    height: 6
  - title: Average Length of Stay by Sex
    name: Average Length of Stay by Sex
    model: texasdhhs
    explore: outpatient_base
    type: looker_column
    fields: [outpatient_base.service_quarter_formatted, outpatient_base.avg_lenth_of_service,
      outpatient_base.sex_code]
    pivots: [outpatient_base.sex_code]
    filters:
      outpatient_base.sex_code: "-NULL"
    sorts: [outpatient_base.service_quarter_formatted, outpatient_base.sex_code]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 37
    col: 3
    width: 8
    height: 6
  - title: Average Stay Principal Diagnosis Code
    name: Average Stay Principal Diagnosis Code
    model: texasdhhs
    explore: outpatient_base
    type: looker_grid
    fields: [outpatient_base.princ_diag_code, outpatient_base.avg_lenth_of_service,
      outpatient_base.year]
    pivots: [outpatient_base.year]
    filters:
      outpatient_base.princ_diag_code: "-NULL"
    sorts: [outpatient_base.avg_lenth_of_service desc 0, outpatient_base.year]
    limit: 500
    column_limit: 50
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      outpatient_base.princ_diag_code: 537
    series_cell_visualizations:
      outpatient_base.avg_lenth_of_service:
        is_active: false
    series_text_format:
      outpatient_base.princ_diag_code: {}
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#81BE56",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: e26878fa-802e-47d9-9478-62fb4307f763, options: {steps: 5, reverse: true}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    row: 31
    col: 11
    width: 13
    height: 12
  - name: ''
    type: text
    subtitle_text: ''
    body_text: "<center>How is the average length of stay improving from year to year?</center>"
    row: 31
    col: 0
    width: 3
    height: 12
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: texasdhhs
    explore: hospitals
    listens_to_filters: []
    field: hospitals.city
