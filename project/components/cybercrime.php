<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>

    <head>
        <style>
    table {
            border-collapse: collapse;
            width:50px;
            font-family: monospace;
            font-size: 20px;
            text-align: center;
            height: 100px;
            width:100%;
            margin:5px;
        }

        td {
            padding: 10px;
        }

        th {
            background-color: #0481aa;
            color: black;
            font-family: 'Arial', sans-serif;
            padding: 10px;
        }

        thead {
            height: 100px;
        }

        tr:nth-child(even) {
            background-color:powderblue ;
        }

        tr:nth-child(odd) {
            background-color:white;
        }

        thead:hover {
            background-color: #0481aa;
        }

        tr:hover {
            background-color:#769daa;
        }

        h1 {
            font-family: sans-serif;
            font-size: 30px;
            text-align: center;
        }

    </style>
    </head>
    <body >
    
        <div><br><br><center><h2>Crime Details</h2>
        <table style="width:90%;border-radius:5px">
            <thead>
                <th >Crime ID</th>
                <th>Crime Name</th>
                <th>Motive</th>
                <th>Description</th>
                <th>Accused ID</th>
            </thead>
            <?php
            $conn = mysqli_connect("localhost","root","","project");
            if($conn-> connect_error)
            {
                die("Connection failed: " . $conn->connect_error);
            }
            $sql = "select * from cybercrime";
            $result = $conn->query($sql);
            if($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo"<tr>
                    <td>". $row["crime_id"] ."</td>
                    <td>". $row["crime_name"] . "</td>
                    <td>". $row["motive_name" ] ."</td>
                    <td>". $row["description"] ."</td>
                    <td>". $row["accused_ID"] ."</td>
                    </tr>";
                }
                echo "</table>";
            }
            else
            {
                echo "0 result";
            }
            $conn-> close();
            ?>
        </table></center>
        </div>
    </body>
</html>