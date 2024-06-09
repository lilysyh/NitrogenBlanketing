
<?php
session_start(); 

if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
}

if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header("location: login.php");
}

// Include the database connection file
include("connection.php");


// Handle delete requests
if (isset($_POST["delete"])) {
    // Handle data deletion
    $delete_id = $_POST["delete_id"];
    
    $delete_stmt = $conn->prepare("DELETE FROM n2blanketingdata WHERE id = ?");
    $delete_stmt->bind_param("i", $delete_id);

    if ($delete_stmt->execute()) {
        // Record deleted successfully
    } else {
        // Error deleting record
    }

    $delete_stmt->close();
}

// Retrieve and display data from the database
$sql = "SELECT * FROM n2blanketingdata";
$result = $conn->query($sql);

$dataArray = array(); // Store the data in an array

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Format the date as dd/mm/yyyy
        $formattedDate = date("d/m/Y", strtotime($row["date"])); // Changed format to dd/mm/yyyy

        // Replace the original date with the formatted date
        $row["date"] = $formattedDate;

        // Check if "Tank Top" is "on" or "off" and apply CSS class accordingly
        $tankTop = strtolower($row["tank_top"]);
        $tankTopClass = '';

        if ($tankTop == 'on') {
            $tankTopClass = 'green-highlight'; // Apply green highlight for "on"
        } elseif ($tankTop == 'off') {
            $tankTopClass = 'red-highlight'; // Apply red highlight for "off"
        }

        // Add the appropriate CSS class to the "Tank Top" column
        $row["tank_top"] = '<span class="' . $tankTopClass . '">' . $row["tank_top"] . '</span>';

        $dataArray[] = $row; // Add each row to the array
    }
}

mysqli_close($conn);
?>

<?php

// Connect to your MySQL database
$connection = new mysqli("localhost", "root", "admin", "n2blanketing");

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// Fetch data from the tank table
$tankQuery = "SELECT t_id FROM tank";
$tankResult = $connection->query($tankQuery);

// Fetch data from the customer table
$customerQuery = "SELECT c_code FROM customer";
$customerResult = $connection->query($customerQuery);

// Fetch data from the product table
$productQuery = "SELECT p_code FROM product";
$productResult = $connection->query($productQuery);
?>


<!DOCTYPE html>
<html>
<head>
    <title>N2 Blanketing Data</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">



    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

    <style>
        body, h1, h2, h3, h4, h5, h6 { font-family: "Karma", sans-serif; }
        .w3-bar-block .w3-bar-item { padding: 20px; }
        body { font-size: 140%; }
        h2 { text-align: center; padding: 20px 0; }
        table caption { padding: .5em 0; }
        table.dataTable th, table.dataTable td { white-space: nowrap; }
        .p { text-align: center; padding-top: 140px; font-size: 14px; }
        /* Add some custom styling for the buttons */
        .edit-button, .delete-button, .add-button {
            padding: 5px 10px;
            margin-right: 5px;
            border: none;
            cursor: pointer;
            background-color: transparent; /* Remove background color */
        }

        /* Change add button color to blue */
    .add-button { color: green; /* Blue */ }
        /* Change edit button color to blue */
        .edit-button { color: blue; /* Blue */ }
        /* Change delete button color to red */
        .delete-button { color: red; /* Red */ }
        /* Increase table width */
        #n2DataTable_wrapper { max-width: 100%; }
        .green-highlight { color: green; font-weight: bold; }
        .red-highlight { color: red; font-weight: bold; }
        .small-label { font-size: 16px; /* Adjust the font size as needed */ }
    </style>
</head>
<body>
   <!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button">Close Sidebar</a>
    <a href="index.php" class="w3-bar-item w3-button">Main Page</a>
    <a href="tank.php" class="w3-bar-item w3-button">Manage Tank</a>
    <a href="customer.php" class="w3-bar-item w3-button">Manage Customer</a>
    <a href="product.php" class="w3-bar-item w3-button">Manage Product</a>
    
</nav>

    <!-- Top menu -->
<div class="w3-top">
    <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
        <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()"><img src="FJBlogo.png" alt="Logo Image" style="max-width: 60px; max-height: 60px;"></div>
        <div class="w3-center w3-padding-16" >N2 Blanketing</div>
        <div class="w3-button w3-padding-16 w3-right" style="font-size: 70%;margin-top: -50px;">
            <?php
            // Check if the username is set in the session and display it
            if (isset($_SESSION['username'])) {
                echo "<i class='fas fa-user'></i>  " . $_SESSION['username'];
            }
            ?>
        </div>
    </div>
</div>

   

    <!-- !PAGE CONTENT! -->
    <div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="startDate">Start Date:</label>
                    <input type="text" id="startDate" class="form-control" readonly>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="endDate">End Date:</label>
                    <input type="text" id="endDate" class="form-control" readonly>
                </div>
            </div>

            <div class="table-responsive" style="overflow-x:auto; width: 100%;">
                <table id="n2DataTable" class="table table-bordered table-hover dt-responsive">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Tank</th>
                            <th>Customer</th>
                            <th>Product</th>
                            <th>Tank Top</th>
                            <th>N2 (%)</th>
                            <th>Reading (%)</th>
                            <th>Remarks</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // Your PHP code for fetching and displaying data goes here
                        // Loop through the data and display each row
                        foreach ($dataArray as $row) {
                            echo "<tr>";
                            echo "<td>" . $row["date"] . "</td>";
                            echo "<td>" . $row["tank"] . "</td>";
                            echo "<td>" . $row["customer"] . "</td>";
                            echo "<td>" . $row["product"] . "</td>";
                            echo "<td>" . $row["tank_top"] . "</td>";
                            echo "<td>" . $row["n2_percentage"] . "</td>";
                            echo "<td>" . $row["reading"] . "</td>";
                            echo "<td>" . $row["remarks"] . "</td>";
                            echo "<td>";

                            // Edit and delete buttons side by side
                            echo "<div class='action-buttons'>";
                            echo "<a href='add_data.php' class='add-button'><i class='fas fa-plus-circle'></i></a>";
                            echo "<a href='edit.php?id=" . $row["id"] . "' class='edit-button'><i class='fas fa-pencil-alt'></i></a>";
                            echo "<a href='javascript:void(0);' class='delete-button' onclick='confirmDelete(" . $row["id"] . ")'><i class='fas fa-trash-alt'></i></a>";
                         
                            echo "</div>";

                            echo "</td>";
                            echo "</tr>";
                        }
                        ?>






                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        const table = $('#n2DataTable').DataTable();

        // Initialize DataTable
        $(document).ready(function () {
            table.draw();
        });

        // Script to open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
        }

        // Function to confirm delete
        function confirmDelete(id) {
            if (confirm("Are you sure you want to delete this record?")) {
                // Redirect to delete script with the record ID
                window.location.href = "delete.php?id=" + id;
            }
        }

        // Initialize Date Range Picker
        $('#startDate, #endDate').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            locale: {
                format: 'DD/MM/YYYY'
            }
        });

        // Apply date range filter
        $('#startDate, #endDate').on('apply.daterangepicker', function (ev, picker) {
            table.draw();

            // Trigger DataTables sorting by the date column (assuming it's the first column with index 0)
            table.order([0, 'asc']).draw();
        });

        // Custom filtering function for date range
        $.fn.dataTable.ext.search.push(function (settings, data, dataIndex) {
            const startDate = $('#startDate').val();
            const endDate = $('#endDate').val();
            const date = data[0]; // Assuming date is in the first column

            if ((startDate === '' && endDate === '') || (!startDate && !endDate)) {
                // No date range specified, return all rows
                return true;
            }

            if ((startDate && !endDate) || (!startDate && endDate)) {
                // Only one date specified, return rows that match that date
                return date === startDate || date === endDate;
            }

            // Date range specified, return rows that fall within the range
            return moment(date, 'DD/MM/YYYY').isBetween(moment(startDate, 'DD/MM/YYYY'), moment(endDate, 'DD/MM/YYYY'), null, '[]');
        });

        // Function to open the Add Data modal
    function openAddDataModal() {
        document.getElementById("addDataModal").style.display = "block";
    }

    // Function to close the Add Data modal
    function closeAddDataModal() {
        document.getElementById("addDataModal").style.display = "none";
    }

    // Function to open the Edit Data modal and populate it with the selected row's data
    function openEditDataModal(id) {
        // Find the row data in the dataArray based on the id
        const row = dataArray.find((item) => item.id === id);
        if (row) {
            // Populate the Edit Data modal fields with the row's data
            document.getElementById("edit_id").value = id;
            document.getElementById("edit_date").value = row.date;
            document.getElementById("edit_tank").value = row.tank;
            // Populate other fields similarly
            // ...
            // Display the Edit Data modal
            document.getElementById("editDataModal").style.display = "block";
        }
    }

    // Function to close the Edit Data modal
    function closeEditDataModal() {
        document.getElementById("editDataModal").style.display = "none";
    }

      // Function to open the Delete Confirmation modal
    function confirmDelete(id) {
        // Display a confirmation dialog
        if (confirm("Are you sure you want to delete this record?")) {
            // Redirect to delete script with the record ID if the user confirms
            window.location.href = "deletedata.php?id=" + id;
        }
    }
    

    // Function to open the Add Data modal
    function openAddDataModal() {
        document.getElementById("addDataModal").style.display = "block";
    }

    // Function to close the Add Data modal
    function closeAddDataModal() {
        document.getElementById("addDataModal").style.display = "none";
    }

    
    </script>
</body>
</html>
