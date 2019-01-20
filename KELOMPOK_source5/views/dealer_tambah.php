<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Tambah Data Star Dealer</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">
                        <div class="form-group">
                               <div class="col-sm-2 col-xs-9">
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="no" class="col-sm-3 control-label">No</label>
                            <div class="col-sm-9">
                                <input type="text" name="no_rak" class="form-control" id="inputEmail3" placeholder="Inputkan Nomor Star Dealer" required>
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="kode" class="col-sm-3 control-label">Kode</label>
                            <div class="col-sm-9">
                                <input type="text" name="no_laci" class="form-control" id="inputEmail3" placeholder="Inputkan Kode Star Dealer" required>
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="star_dealer" class="col-sm-3 control-label">Nama Star Dealer</label>
                            <div class="col-sm-9">
                                <input type="text" name="no_boks" class="form-control" id="inputEmail3" placeholder="Inputkan Nama Star Dealer"                                      required>
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="omset" class="col-sm-3 control-label">Omset</label>
                            <div class="col-sm-9">
                                <input type="text" name="para_pihak" class="form-control" id="inputEmail3" placeholder="Inputkan Omset" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="poin" class="col-sm-3 control-label">Poin</label>
                            <div class="col-sm-9">
                                <input type="text" name="para_pihak" class="form-control" id="inputEmail3" placeholder="Inputkan Poin" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-save"></span> Simpan Star Dealer</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">
                    <a href="?page=dealer&actions=tampil" class="btn btn-danger btn-sm">
                        Kembali Ke Data Star Dealer
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>

<?php
if($_POST){
    //Ambil data dari form
  $kkode=$_POST['kode'];
	$star_dealer=$_POST['star_dealer'];
	$omset=$_POST['omset'];
	$poin=$_POST['poin'];
    //buat sql
    $sql="INSERT INTO dealer VALUES ('','$kode','$star_dealer','$omset','$poin')";
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Simpan Arsip Error");
    if ($query){
        echo "<script>window.location.assign('?page=dealer&actions=tampil');</script>";
    }else{
        echo "<script>alert('Simpan Star Dealer Gagal');<script>";
    }
    }

?>
