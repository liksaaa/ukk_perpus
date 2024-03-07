<h2 class="mt-4">Tambah Data User</h2>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <form method="post">
                    <?php
                    if(isset($_POST['submit'])){
                        $username = $_POST['username'];
                        $password = $_POST['password'];
                        $email = $_POST['email'];
                        $nama_lengkap = $_POST['nama_lengkap'];
                        $alamat = $_POST['alamat'];
                        $no_telpon = $_POST['no_telpon'];
                        $level = $_POST['level'];
                        $query = mysqli_query($koneksi, "INSERT INTO user (username, password, email, nama_lengkap, alamat, no_telpon, level) VALUES ('$username', '$password', '$email', '$nama_lengkap', '$alamat', '$no_telpon', '$level')");
                        if($query) {
                            echo '<script>alert("Tambah data user berhasil.");</script>';
                        } else {
                            echo '<script>alert("Tambah data user gagal.");</script>';
                        }
                    }
                    ?>
                    <div class="row mb-3">
                        <div class="col-md-2">Username</div>
                        <div class="col-md-8"><input type="username" class="form-control" name="username"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Password</div>
                        <div class="col-md-8"><input type="password" class="form-control" name="password"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Email</div>
                        <div class="col-md-8"><input type="email" class="form-control" name="email"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Nama Lengkap</div>
                        <div class="col-md-8"><input type="text" class="form-control" name="nama_lengkap"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Alamat</div>
                        <div class="col-md-8"><input type="alamat" class="form-control" name="alamat"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">No Telp</div>
                        <div class="col-md-8"><input type="no_telpon" class="form-control" name="no_telpon"></div>
                    </div>
                     <div class="row mb-3">
                        <div class="col-md-2">Login Sebagai</div>
                        <div class="col-md-8">
                            <select class="form-control" name="level">
                                <option value="peminjam">Peminjam</option>
                                <option value="petugas">Petugas</option>
                                <option value="admin">Admin</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <button type="submit" class="btn btn-warning" name="submit" value="submit">Simpan</button>
                            <a href="?page=user" class="btn btn-success">Kembali</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
