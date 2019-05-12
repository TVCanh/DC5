<?php
header('Access-Control-Allow-Origin: *');
    include("../connect.php");
    $sql="SELECT * FROM tuyen_xebus where ma_sotuyen=".$_GET['id']."";
    $retval=mysqli_query($conn, $sql) or die('Không kết nối được');
        if(mysqli_num_rows($retval) > 0){
            while($row = mysqli_fetch_assoc($retval)){
                    echo "<div id='thongtintuyenbus'>
                            <table class='table'>
                                    <tr><td>Mã Số Tuyến: </td><td>".$row['ma_sotuyen']."</td></tr>
                                    <tr><td>Tên Tuyến: </td><td>".$row['ten_tuyen']."</td></tr>
                                    <tr><td>Độ Dài Tuyến: </td><td>".$row['dodai_tuyen']." Km</td></tr>
                                    <tr><td>Loại Xe: </td><td>".$row['loai_xe']."</td></tr>
                                    <tr><td>Giá Vé: </td><td>".$row['gia_ve']."</td></tr>
                                    <tr><td>Tỉnh Thành: </td><td>".$row['ma_tinhthanh']."</td></tr>
                                    <tr><td>Giản Cách Chuyến: </td><td>".$row['giancach_chuyen']." Phút</td></tr>
                                    <tr><td>ĐV Đảm Nhận: </td><td>".$row['donvi_damnhan']."</td></tr>
                                    <tr><td>Giản Cách Chuyến: </td><td>Từ: ".$row['tu']." ----> Đến: ".$row['den']."</td></tr>
                                </table>
                            </div>";
                }
        }else echo "Không Có Tuyến Bus Nào!";

?>