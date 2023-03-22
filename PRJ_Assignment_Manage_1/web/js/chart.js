$(document).ready(
  function(){
      
      $.ajax({
          type : "get",
          url : "/project/lChart",
          dataType : "JSON",
          success : function(result){
              // alert(result);
              console.log(result);
              google.charts.load('current',{
                  'packages' : ['corechart']
              });

              google.charts.setOnLoadCallback(function(){
                  drawChart(result);
              });
          },
          error: (req, status, err) =>{
              console.log(err);
          }
      });

      function drawChart(result){
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'displayName');
          data.addColumn('number', 'quantity')
          var dataArray = [];
          $.each(result,function(i,obj){
              dataArray.push([obj.displayName, obj.quantity]);
          });
          data.addRows(dataArray);
          var piechart_options = {
              legend : 'center',
              title : 'Top 5 sp ban chay',
              width : 500,
              height : 500,
          };
          var piechart = new google.visualization.PieChart(document.getElementById('piechart_div'));
          piechart.draw(data, piechart_options);
      }
  }

  
);

