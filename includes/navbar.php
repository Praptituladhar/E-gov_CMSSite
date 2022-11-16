	<?php session_start();?>
     <nav style="min-height:80px;" class="navbar bg-light" role="navigation">
			<div class="container">
				<div class="navbar-header">
					 <!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle Navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>-->
					<a class="navbar-brand" href="#"><img src="https://seeklogo.com/images/N/nepal_coat_of_arm-logo-754BC1FCDB-seeklogo.com.png" alt="logo" style="width:80px; height:auto;"></a>				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav text-uppercase h4"  style="margin-top: 30px;">
                    	<?php
							$query = "SELECT * FROM categories";
							$run_query = mysqli_query(
								$con, $query);
							while ($row = mysqli_fetch_assoc($run_query)) {
								$cat_title = $row['cat_title'];
								echo "<li><a href=''>{$cat_title}</a></li>";
							}
							?>
													<li><a href="admin">Admin</a></li>
													<li><a href="register.php">Register</a></li>
													<?php
							if (isset($_SESSION['role'])) {
								if (isset($_GET['post'])) {
									$page_id = $_GET['post'];
									echo "<li><a href='admin/posts.php?source=edit_post&p_id={$page_id}'>Edit Post</a></li>";
								}
							}

							?>
						<!--
						<li><a href="#">Category</a></li>
						<li><a href="#">Contact Us</a></li> -->
					</ul>
				</div>
			</div>
	    </nav>