google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  // Some raw data (not necessarily accurate)
  var data = google.visualization.arrayToDataTable([
    ['Division','DDG(Consultancy)','Real estate Management & Development Division','Environment & Landscape ','Land Development & Manegmenr Division','Facility Management & Technical Division','Quantitative Survey Unit','URP & Housing Division','HRM'],
    ['Q1',  94,      92,        94,       88,           86,      95.5,     94.8,  91],
    ['Q2',  94,      90,        94,       87,           87,      92.9,     96.9,  91],
    ['Q3',  94,      92,        93,       87,           86,      93.7,     96.4,  91],
    ['Q4',   0,      87,        88,       88,            0,      88.2,     92.6,  91]
    
  ]);

  var options = {
    title : 'Quater wise Report',
    vAxis: {title: 'Percenatge'},
    hAxis: {title: 'Quarter'},
    seriesType: 'bars',
    series: {12: {type: 'line'}}
  };

  var chart = new google.visualization.ComboChart(document.getElementById('chart_div3'));
  chart.draw(data, options);
}


