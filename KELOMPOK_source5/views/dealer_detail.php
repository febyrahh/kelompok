<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Informasi Detail Star Dealer</h3>
                </div>
                <div class="panel-body">
                    <!--Menampilkan data detail Star Dealer-->
                    <?php
                    $sql = "SELECT * FROM dealer WHERE kode ='" . $_GET ['kode'] . "'";
                    //proses query ke database
                    $query = mysqli_query($koneksi, $sql) or die("SQL Detail error");
                    //Merubaha data hasil query kedalam bentuk array
                    $data = mysqli_fetch_array($query);
                    ?>   

                    <!--dalam tabel--->
                    <table class="table table-bordered table-striped table-hover"> 
                        <tr>
                            <td width="200">Kode</td> <td><?= $data['kode'] ?></td>
                        </tr>
                        <tr>
                            <td>Nama Star Dealer</td> <td><?= $data['star_dealer'] ?></td>
                        </tr>
                        <tr>
                            <td>omset</td> <td><?= $data['omset'] ?></td>
                        </tr>
						<tr>
                            <td>Poin</td> <td><?= $data['poin'] ?></td>
                        </tr>
                        <tr>
                           
                    </table>
				
                </div> <!--end panel-body-->
                <!--panel footer--> 
                <div class="panel-footer">
                    <a href="?page=dealer&actions=tampil" class="btn btn-success btn-sm">
                        Kembali ke Data Star Dealer </a>

                </div>
                <!--end panel footer-->
            </div>

        </div>
    </div>
</div>

