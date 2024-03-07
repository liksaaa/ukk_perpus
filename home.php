<?php
require_once 'graph.php';
require_once 'action.php';
date_default_timezone_set("Asia/Makassar");


$graph = new Graph();

$row = $graph->getPeminjam();

// $senin = date('Y-m-d', strtotime("this monday"));
// $minggu = date('Y-m-d', strtotime('this sunday'));

// $row = graph($senin, $minggu);

?>
<?php if($_SESSION['user']['level'] == 'peminjam') : ?>
    <center><h2 style="color: green;">Aplikasi Perpustakaan Digital</h2></center>
    <div class="col-xl-10 col-md-20">
    <div class="card text-white mb-4" style="background-color: rgb(27, 128, 1)"> 
            <div class="card-body">
                <?php
                echo mysqli_num_rows(mysqli_query($koneksi, "SELECT*FROM peminjaman"));
                ?>
                Total peminjaman</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=peminjaman">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-10 col-md-20">
    <div class="card text-white mb-4" style="background-color: rgb(27, 128, 1)"> 
            <div class="card-body">
                <?php
                ?>
                Total Ulasan</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=ulasan">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
</div>
<?php endif; ?>

<?php if($_SESSION['user']['level'] != 'peminjam') : ?>
<h1 class="mt-4">Dashboard</h1>
<ol class="breadcrumb mb-4">
</ol>
<div class="row">
    <div class="col-xl-3 col-md-6">
    <div class="card text-white mb-4" style="background-color: rgb(19, 100, 0);"> 
            <div class="card-body">
                <?php
                echo mysqli_num_rows(mysqli_query($koneksi, "SELECT*FROM kategori"));
                ?>
                Total Kategori Buku</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=kategori">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
    <div class="card text-white mb-4" style="background-color: rgb(27, 128, 1)"> 
            <div class="card-body">
                <?php
                echo mysqli_num_rows(mysqli_query($koneksi, "SELECT*FROM buku"));
                ?>
                Total Buku</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=buku">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
    <div class="card text-white mb-4" style="background-color: 	rgb(107, 142, 35);"> 
            <div class="card-body">
                <?php
                echo mysqli_num_rows(mysqli_query($koneksi, "SELECT*FROM ulasan"));
                ?>
                Total Ulasan</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=ulasan">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>
        </div>
    </div>
<div class="col-xl-3 col-md-6">
<div class="card text-white mb-4" style="background-color: rgb(50, 205, 50);"> 
        <div class="card-body">
            <?php
            echo mysqli_num_rows(mysqli_query($koneksi, "SELECT*FROM user"));
            ?>
            Total User</div>
            <div class="card-footer d-flex align-items-center justify-content-between">
                <a class="small text-white stretched-link" href="?page=user">Details</a>
                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
            </div>


        </div>
    </div>
</div>



<div class="card">
    <div class="card-body">
        <table class="table table-bordered">

            <tr>
                <td width="200">Nama</td>
                <td width="1">:</td>
                <td><?php echo $_SESSION['user']['nama_lengkap']; ?></td>
            </tr>
            <tr>
                <td width="200">Level User</td>
                <td width="1">:</td>
                <td><?php echo $_SESSION['user']['level']; ?></td>
            </tr>
            <tr>
                <td width="200">Tanggal Login</td>
                <td width="1">:</td>
                <td><?php echo date('d-m-Y'); ?></td>
            </tr>

        </table>
    </div>
</div>

<div class="card mt-3">
    <div class="card-body">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div>
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<?php endif; ?>
 
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const ctx = document.getElementById('myChart');
    let data = <?= json_encode($row) ?>

    new Chart(ctx, {
        type: 'bar',
        data: {
            // labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: data,
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        callback: function(value, index, values) {
                            if (Number.isInteger(value)) {
                                return value;
                            } else {
                                return '';
                            }
                        }
                    }
                }
            }
        }
    });
</script>