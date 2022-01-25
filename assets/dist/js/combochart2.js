google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Division', 'Chairman Office','DG Office','Board of Mgt. Office','ITS ','Legal','ADG','HRM Transport','HRM Security','Progress Monitoring','Finance','DDG','CMR','Western Province','GIS','Strategic Planning','PMR-WP','PMR-SP','PMR-NP','Procument Unit','Engineering Services Division','Special Project','DDG(Consultancy)','Real estate Management & Development Division','Environment & Landscape ','Land Development & Manegmenr Division','Facility Management & Technical Division','Quantitative Survey Unit','URP & Housing Division','HRM'],
          
          
   ['DIVISION % ', 100,100,100,82.2,98,97.7,99.5,84.4,90.3,94,98,93.8,95.38,92.7,93.6,88,94,98.8,100,91.5,90,94,90.21,87.6,93,86.3,92.6,94.3,91]
         
          
        ]);

        var options = {
          title : 'Annual Report',
          vAxis: {title: 'Percenatge'},
          hAxis: {title: ''},
          seriesType: 'bars',
          series: {30: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_di'));
        chart.draw(data, options);
      }