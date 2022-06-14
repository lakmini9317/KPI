<?php

    include'db_connect2.php';

    // Get the total number of records from our table "students".
    $total_pages = $conn->query('SELECT * FROM dutiesho2022 where j_total not in(null)')->num_rows;

    // Check if the page number is specified and check if it's a number, if not return the default page number which is 1.
    $page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

    // Number of results to show on each page.
    $num_results_on_page = 20;

    if ($stmt = $conn->prepare('SELECT * FROM dutiesho2022  ORDER BY id LIMIT ?,?')) {
        // Calculate the page to get the results we need from our table.
        $calc_page = ($page - 1) * $num_results_on_page;
        $stmt->bind_param('ii', $calc_page, $num_results_on_page);
        $stmt->execute(); 
        // Get the results...
        $result = $stmt->get_result();
        
?>

	<!DOCTYPE html>
	<html>
		<head>
			<title>Duty List Head Office</title>
			<meta charset="utf-8">
			<style>
			html {
				font-family: Tahoma, Geneva, sans-serif;
				padding: 20px;
				background-color: #F8F9F9;
			}
			table {
				border-collapse: collapse;
				width: 500px;
			}
			td, th {
				padding: 10px;
			}
			th {
				background-color: #54585d;
				color: #ffffff;
				font-weight: bold;
				font-size: 13px;
				border: 1px solid #54585d;
			}
			td {
				color: #636363;
				border: 1px solid #dddfe1;
			}
			tr {
				background-color: #f9fafb;
			}
			tr:nth-child(odd) {
				background-color: #ffffff;
			}
			.pagination {
				list-style-type: none;
				padding: 10px 0;
				display: inline-flex;
				justify-content: space-between;
				box-sizing: border-box;
			}
			.pagination li {
				box-sizing: border-box;
				padding-right: 10px;
			}
			.pagination li a {
				box-sizing: border-box;
				background-color: #e2e6e6;
				padding: 8px;
				text-decoration: none;
				font-size: 12px;
				font-weight: bold;
				color: #616872;
				border-radius: 4px;
			}
			.pagination li a:hover {
				background-color: #d4dada;
			}
			.pagination .next a, .pagination .prev a {
				text-transform: uppercase;
				font-size: 12px;
			}
			.pagination .currentpage a {
				background-color: #518acb;
				color: #fff;
			}
			.pagination .currentpage a:hover {
				background-color: #518acb;
			}
			</style>
		</head>
	<body>
        <div class="row">
        <div class="col-lg-12">
            <div class="card card-outline card-success">
                <div class="card-header">
                    <div class="card-tools">
                        
                    </div>
                </div>

            <div class="card-body">
                <table  class="table table-bordered" id="list" style="width:100%">
                    <thead>
                        <tr class="text-center">

                            <th rowspan='2'>#</th>
                            <th rowspan='2'>Division</th>
                            <th rowspan='2'>EMP Code</th>
                            <th rowspan='2'>Name</th>
                            <th rowspan='2'>Designation</th>
                            <th rowspan='2'>Duty Framework</th>
                            <th rowspan='2'>Task </th>						
                            <th rowspan='2'>Jan</th>
                            <th rowspan='2'>Feb</th>
                            <th rowspan='2'>March</th>
                        </tr>				
                    </thead>

                    <tbody>

                        <?php
                        $i = 1; 
                        while ($row = $result->fetch_assoc()): 
                        ?>

                        <tr>
                            <th class="text-center"><?php echo $i++ ?></th>
                            <td><?php echo $row['division']; ?></td>
                            <td><?php echo $row['empcode']; ?></td>
                            <td><?php echo ucwords($row['noc']); ?></td>
                            <td><?php echo $row['desig']; ?></td>
                            <td><?php echo $row['df']; ?></td>
                            <td><?php echo $row['task']; ?></td>
                            <td><?php echo $row['j_total']; ?></td>
                            <td><?php echo $row['f_total']; ?></td>
                            <td><?php echo $row['m_total']; ?></td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>

            <div style="margin-left:30px;">
            <?php if (ceil($total_pages / $num_results_on_page) > 0): ?>
                    <ul class="pagination">
                        <?php if ($page > 1): ?>
                        <li class="prev"><a href="Duty List Head Office.php?page=<?php echo $page-1 ?>">Prev</a></li>
                        <?php endif; ?>

                        <?php if ($page > 3): ?>
                        <li class="start"><a href="Duty List Head Office.php?page=1">1</a></li>
                        <li class="dots">...</li>
                        <?php endif; ?>

                        <?php if ($page-2 > 0): ?><li class="page"><a href="Duty List Head Office.php?page=<?php echo $page-2 ?>"><?php echo $page-2 ?></a></li><?php endif; ?>
                        <?php if ($page-1 > 0): ?><li class="page"><a href="Duty List Head Office.php?page=<?php echo $page-1 ?>"><?php echo $page-1 ?></a></li><?php endif; ?>

                        <li class="currentpage"><a href="Duty List Head Office.php?page=<?php echo $page ?>"><?php echo $page ?></a></li>

                        <?php if ($page+1 < ceil($total_pages / $num_results_on_page)+1): ?><li class="page"><a href="Duty List Head Office.php?page=<?php echo $page+1 ?>"><?php echo $page+1 ?></a></li><?php endif; ?>
                        <?php if ($page+2 < ceil($total_pages / $num_results_on_page)+1): ?><li class="page"><a href="Duty List Head Office.php?page=<?php echo $page+2 ?>"><?php echo $page+2 ?></a></li><?php endif; ?>

                        <?php if ($page < ceil($total_pages / $num_results_on_page)-2): ?>
                        <li class="dots">...</li>
                        <li class="end"><a href="Duty List Head Office.php?page=<?php echo ceil($total_pages / $num_results_on_page) ?>"><?php echo ceil($total_pages / $num_results_on_page) ?></a></li>
                        <?php endif; ?>

                        <?php if ($page < ceil($total_pages / $num_results_on_page)): ?>
                        <li class="next"><a href="Duty List Head Office.php?page=<?php echo $page+1 ?>">Next</a></li>
                        <?php endif; ?>
                    </ul>
                <?php endif; ?>
            </div>

                
            </div>
        </div>
	</body>
	</html>
	<?php
	$stmt->close();
}
?>