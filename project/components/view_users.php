<!DOCTYPE html>
<html>
    <head>
        <title>Table</title>
        <style type="text/css">
        body {
            background-color : rgb(255, 192, 203)
;
        }

        table {
            border-collapse: collapse;
            width: 70%;
            font-family: monospace;
            font-size: 20px;
            text-align: center;
            height: 100px;
            width: 100%;
        }

        td {
            padding: 10px;
        }

        th {
            background-color: #993366 ;
            color: black;
            font-family: 'Arial', sans-serif;
            padding: 10px;
        }

        thead {
            height: 100px;
        }

        tr:nth-child(even) {
            background-color:#ddbbdd ;
        }

        tr:nth-child(odd) {
            background-color: #b894b8;
        }

        thead:hover {
            background-color: #87CEEB;
        }

        tr:hover {
            background-color:  #996699;
        }

        h1 {
            font-family: sans-serif;
            font-size: 30px;
            text-align: center;
        }
    </style>
    </head>
    <body>
        </div>
        <br>
        <h1>CYBERCRIME DATABASE </h1>
        <br>
        </div>
        <div>
        <table>
            <thead>
                <th>user_id</th>
                <th>user_name</th>
                <th>email_id</th>
                <th>user_type</th>
                <th>password</th>
            </thead>
            <?php
            $conn = mysqli_connect("localhost","root","","USERS");
            if($conn-> connect_error)
            {
                die("Connection failed: " . $conn->connect_error);
            }
            $sql = "select * from USERS";
            $result = $conn->query($sql);
            if($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo"<tr>
                    <td>". $row["user_id"] ."</td>
                    <td>". $row["user_name"] . "</td>
                    <td>". $row["email_id"] ."</td>
                    <td>". $row["user_type"] ."</td>
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
        </table>
        </div>
    </body>
</html>