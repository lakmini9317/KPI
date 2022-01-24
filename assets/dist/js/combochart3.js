google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  // Some raw data (not necessarily accurate)
  var data = google.visualization.arrayToDataTable([
    ['Division','CMR','Western Province','GIS','Strategic Planning','PMR-WP','PMR-SP','PMR-NP','Procument Unit','Engineering Services Division','Special Project'],
    ['Q1',  92,      96.5,        92,       96.8,           91,      95,     99,   100,    89.2,      91],
    ['Q2',  93,      95.6,        92,       95.6,           89,      94,     99,   100,    89.5,      92],
    ['Q3',  94,      94.4,        93,       94.6,           88,      91,     98,   100,    92.4,      87],
    ['Q4',  96,      95.7,        94,       86.7,           86,      94,     98,   100,    94.6,      95]
    
  ]);

  var options = {
    title : 'Quater  wise Report',
    vAxis: {title: 'Percenatge'},
    hAxis: {title: 'Quarter'},
    seriesType: 'bars',
    series: {12: {type: 'line'}}
  };

  var chart = new google.visualization.ComboChart(document.getElementById('chart_div2'));
  chart.draw(data, options);
}


