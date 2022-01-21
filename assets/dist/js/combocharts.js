google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  // Some raw data (not necessarily accurate)
  var data = google.visualization.arrayToDataTable([
    ['Division', 'Chairman Office', 'DG Office', 'Board of Mgt. Office', 'ITS ', 'Legal', 'ADG', 'hrmtrans', 'hrmsec','progress','finance','ddg'],
    ['Q1',  100,      100,        100,       80.6,           97,      98,     100,   85.7,    92,      96,    98],
    ['Q2',  100,      100,        100,       82.3,           98,      97,     100,   83.3,    94,      94,    99],
    ['Q3',  100,      100,        100,       82.5,           98,      98,     100,   86.8,    86.8,    96,    98],
    ['Q4',  100,      100,        100,       82.3,           98,      98,     98,    84.8,    90,      92,    98]
    
  ]);

  var options = {
    title : 'Quater wise Report',
    vAxis: {title: 'Percenatge'},
    hAxis: {title: 'Quarter'},
    seriesType: 'bars',
    series: {10: {type: 'line'}}
  };

  var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
  chart.draw(data, options);
}