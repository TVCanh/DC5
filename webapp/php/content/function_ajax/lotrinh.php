<?php
header('Access-Control-Allow-Origin: *');
    include("../connect.php");
    $sql="SELECT tram_xebus.stt_theotuyen, tram_xebus.ten_tram FROM tuyen_xebus, tram_xebus WHERE tuyen_xebus.ma_sotuyen = tram_xebus.ma_sotuyen AND tuyen_xebus.ma_sotuyen='".$_GET['id']."'";
    $retval=mysqli_query($conn, $sql) or die('Không kết nối được');
        if(mysqli_num_rows($retval) > 0){
            $i=0;
            while($row = mysqli_fetch_assoc($retval)){
                echo "<a href='#' onclick='showMarker({$i}); return false;' class='dstbus'> 
                        <table cellpadding='0' cellspacing='0'>
                            <tr class='rowStop'>
                                <td class='orderNo'>".$row['stt_theotuyen']."</td>
                                <td style='padding-left:5px;'>".$row['ten_tram']."</td>
                            </tr>
                        </table>
                    </a>";
                    $i++;
        }
    }else echo "Không có kết quả!";
?>