<?php if($_SESSION['user']['level'] == 'admin') : ?>
    

<h2 class="mt-4">User</h2>
<div class="card">
  <div class="card-body">
  <div class="row">
    <div class="col-md-12">
        <a href="?page=user_tambah" class="btn btn-success">+ Tambah Data</a>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <tr>
                <th>No</th>
                <th>Username</th>
                <th>Password</th>
                <th>Email</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>No. Telp</th>
                <th>Login Sebagai</th>
                <th>Aksi</th>
            </tr>
            <?php
                 $i = 1;
             $query = mysqli_query($koneksi, "SELECT * FROM user");
            while($data = mysqli_fetch_array($query)){
    
              
               ?>

                    <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $data['username']; ?></td>
                        <td><?php echo $data['password']; ?></td>
                        <td><?php echo $data['email']; ?></td>
                        <td><?php echo $data['nama_lengkap']; ?></td>
                        <td><?php echo $data['alamat']; ?></td>
                        <td><?php echo $data['no_telpon']; ?></td>
                        <td><?php echo $data['level']; ?></td>
                        <td>
                            <a onclick="return confirm('Apakah anda yakin menghapus data ini?');" href="?page=user_hapus&&id=<?php echo $data['id_user']; ?>" class="btn btn-success">Hapus</a>
                        </td>
                    </tr>
                    <?php
                }
            ?>
        </table>
    </div>
      
  </div>
    </div>
</div>
<?php endif; ?>