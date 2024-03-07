  <h2 class="mt-4">Koleksi Pribadi</h2>
  <div class="card">
      <div class="card-body">
          <div class="row">
              <div class="col-md-12">
                  <form method="post">
                      <?php

                        $user = $_SESSION['user']['id_user'];
                        if (isset($_POST['submit'])) {
                            $id_kategori = $_POST['id_kategori'];
                            // $judul = $_POST['judul'];
                            // $penulis = $_POST['penulis'];
                            // $penerbit = $_POST['penerbit'];
                            // $tahun_terbit = $_POST['tahun_terbit'];
                            // $deskripsi = $_POST['deskripsi'];
                            $query = mysqli_query($koneksi, "INSERT INTO koleksi_pribadi (id_user, id_buku) values ('$user', '$id_kategori')");

                            if ($query) {
                                echo '<script>alert("Tambah data berhasil.");</script>';
                            } else {
                                echo '<script>alert("Tambah data gagal.");</script>';
                            }
                        }
                        ?>
                      <div class="row mb-3">
                          <div class="col-md-2">Kategori</div>
                          <div class="col-md-8">
                              <select name="id_kategori" class="form-control">
                                  <?php
                                    $kat = mysqli_query($koneksi, "SELECT * FROM buku");
                                    while ($kategori = mysqli_fetch_array($kat)) {
                                    ?>
                                      <option value="<?php echo $kategori['id_buku']; ?>"><?php echo $kategori['judul']; ?></option>
                                  <?php
                                    }
                                    ?>
                              </select>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col-md-2"></div>
                          <div class="col-md-8">
                              <button type="submit" class="btn btn-warning" name="submit" value="submit">Simpan</button>
                              <a href="?page=koleksi_pribadi" class="btn btn-success">Kembali</a>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </div>