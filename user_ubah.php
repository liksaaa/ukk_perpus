<h2 class="mt-4">Ubah Data Pengguna</h2>
<div class="card">
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <form method="post">
                    <?php
                        $id = $_GET['id'];
                        if(isset($_POST['submit'])){
                            $username = $_POST['username'];
                            $password = $_POST['password'];
                            $email = $_POST['email'];
                            $nama_lengkap = $_POST['nama_lengkap'];
                            $alamat = $_POST['alamat'];
                            $no_telpon = $_POST['no_telpon'];
                            $level = $_POST['level'];
                            $query = mysqli_query($koneksi, "UPDATE user SET username='$username', password='$password', email='$email', nama_lengkap='$nama_lengkap', alamat='$alamat', no_telpon='$no_telpon', level='$level' WHERE id_user=$id");

                            if($query) {
                                echo '<script>alert("Ubah data berhasil.");</script>';
                            } else {
                                echo '<script>alert("Ubah data gagal.");</script>';
                            }
                        }

                        $query = mysqli_query($koneksi, "SELECT * FROM user WHERE id_user=$id");
                        $data = mysqli_fetch_array($query);
                    ?>
                    <div class="row mb-3">
                        <div class="col-md-2">Username</div>
                        <div class="col-md-8"><input type="text" class="form-control" value="<?php echo $data['username']; ?>" name="username"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Password</div>
                        <div class="col-md-8"><input type="text" class="form-control" value="<?php echo $data['password']; ?>" name="password"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Email</div>
                        <div class="col-md-8"><input type="email" class="form-control" value="<?php echo $data['email']; ?>" name="email"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Nama</div>
                        <div class="col-md-8"><input type="text" class="form-control" value="<?php echo $data['nama_lengkap']; ?>" name="nama_lengkap"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Alamat</div>
                        <div class="col-md-8"><input type="text" class="form-control" value="<?php echo $data['alamat']; ?>" name="alamat"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">No Telp</div>
                        <div class="col-md-8"><input type="text" class="form-control" value="<?php echo $data['no_telpon']; ?>" name="no_telpon"></div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-2">Login Sebagai</div>
                        <div class="col-md-8">
                            <select class="form-control" name="level">
                                <option value="peminjam" <?php echo ($data['level'] == 'peminjam') ? 'selected' : ''; ?>>Peminjam</option>
                                <option value="petugas" <?php echo ($data['level'] == 'petugas') ? 'selected' : ''; ?>>Petugas</option>
                                <option value="admin" <?php echo ($data['level'] == 'admin') ? 'selected' : ''; ?>>Admin</option>
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
