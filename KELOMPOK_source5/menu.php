<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <a class="navbar-brand" href="?page=utama">Sistem Informasi Pengolahan Barang Tupperware<br  > Pada PT. Mulani Panca Gempita Kisaran</a></br>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                        <li><a href="?page=home&actions=tampil">Home</a></li>

            <?php if(isset($_SESSION['level']) && $_SESSION['level']==1) { ?>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Barang <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=reguler&actions=tampil">Produk Reguler</a></li>
                        <li><a href="?page=promosi&actions=tampil">Promosion</a></li>
                    </ul>
                </li>
                <li>
                    <a href="?page=member&actions=tampil">Member</a></li>
               
				<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Bonus                     <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="?page=dealer&actions=tampil">Star Dealer</a></li>
						 <li><a href="?page=activity&actions=tampil">Activity</a></li> <li>
                         <a href="?page=star&actions=tampil">Star Chart</a></li>
                    </ul>
                </li>

                <?php } ?>
                <li><a href="?page=about&actions=tampil">About</a></li>
                <li><a href="?page=kontak&actions=tampil">Contact</a></li>

                    <?php if (isset($_SESSION['username'])) { ?>
                    <li><a href="logout.php">Logout</a></li>
                <?php } ?>

            </ul>
        </div>
    </div>
</nav>
