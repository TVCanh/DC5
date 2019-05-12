<?php
header('Access-Control-Allow-Origin: *');
include("../connect.php");
			$html="";
			$sql="SELECT * FROM tuyen_xebus";
			$retval=mysqli_query($conn, $sql);
			if(mysqli_num_rows($retval) > 0){	
				while($row = mysqli_fetch_assoc($retval)){
					$html.="<tr>
								<td> 
										<a href='chitiettuyen.html?id=".$row['ma_sotuyen']."' onclick='' class='dstuyenbus'>
										".$row['ma_sotuyen']."</td>
								<td>
										<a href='chitiettuyen.html?id=".$row['ma_sotuyen']."' onclick='' class='dstuyenbus'>
										".$row['ten_tuyen']."</td>
							</tr>";
			}
		}else echo "Không có tuyến bus nào!";
		echo $html;
?>