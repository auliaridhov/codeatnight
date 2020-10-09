<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>

<section class="content">
    <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">DataTable with default features</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>Kode</th>
                                    <th>Merk</th>
                                    <th>Kategori</th>
                                    <th>Ukuran</th>
                                    <th>Harga</th>
                                    <th>Keterangan</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php $i = 1; ?>
                                <?php foreach ($barang as $k) : ?>
                                    <tr>
                                        <td><?= $k['nama']; ?></td>
                                        <td><?= $k['kode']; ?></td>
                                        <td><?= $k['merk']; ?></td>
                                        <td><?= $k['kategori']; ?></td>
                                        <td><?= $k['ukuran']; ?></td>
                                        <td><?= $k['harga']; ?></td>
                                        <td><?= $k['ket']; ?></td>

                                        <td><img src="/img/<?= $k['gambar']; ?>" alt="" class="sampul"></td>
                                        <td><a href="#" class="btn btn-success">Detail</a></td>
                                    </tr>
                                <?php endforeach; ?>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Nama</th>
                                    <th>Kode</th>
                                    <th>Merk</th>
                                    <th>Kategori</th>
                                    <th>Ukuran</th>
                                    <th>Harga</th>
                                    <th>Keterangan</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>

            </div>
        </div>
    </div>
</section>

<?= $this->endSection(); ?>