<!DOCTYPE HTML>
<!--
	Solid State by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>careers- Eccentric InfoTech</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
	<!---	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header">
						<h1><a href="index.html">careers</a></h1>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<style>
				#l #u {display: none;}
				#l:hover #u{display: block; background-color: black;padding: 0;list-style-type: none;}
				.parallax-testimonial-review {position: relative;}		
					table {
                    border-collapse: collapse;
                    width: 100%;
                           }
                    p1 {
					display:list-item;
                   list-style:disc inside;
                     padding:0 0 0 14px;
                     margin:0;
                      }
                   #im{
						width: 100%;
						height: auto;
						background-repeat: no-repeat;
						background-size: contain;
						border: 1px solid red;
						}
img {
				display: block;
    margin: auto;
    border-radius: 8px;
}
				   <!--- tr:nth-child(even){background-color: #f2f2f2}--->				
				   </style>
					<nav id="menu">
						<div class="inner">
							<h2>Menu</h2>
							<ul class="links">
								<li><a href="index.html">Home</a></li>
								<li><a href="services.html">Services</a></li>
								<li id = "l"><a href="#" >Portfolio</a>
									<ul id = "u">
										<li><a href="SoftwarePortfolio.html">SEO &amp; Digital Marketing</a></li>
										<li><a href="portfolio.html">Website </a></li>
										<li><a href="designportfolio.html">Design</a></li>
										<li><a href="mobileprotfolio.html">Mobile Application</a></li>
									</ul>
								</li>
								<li id = "l"><a href="#">Technology Focus</a>
									<ul id = "u">
										<li><a href="javatechnology.html">Java Technology</a></li>
										<li><a href="PHP.html">PHP Technology</a></li>
										<li><a href="Microsoft.html">Microsoft Technology</a></li>
										<li><a href="Android.html">Android Application</a></li>
										<li><a href="IOS.html">IOS Application</a></li>
									</ul>
								</li>
								<li><a href="OurTeam.html">Our Team</a></li>
								<li><a href="fetch_blog.html">Blogs</a></li>
								<li><a href="careers.php">Careers</a></li>
								<li><a href="Outsourse.html">Outsource To Us</a></li>
								<li><a href="contact.php">Contact</a></li>
							</ul>
							<a href="#" class="close">Close</a>
						</div>
					</nav>

				<!-- Wrapper -->
					<section id="wrapper">
						<header>
							<div class="inner">
								<h2> SUBMIT YOUR RESUME</h2>
								<img id="im" src="images/career.jpg" alt="">
								
							<form method="post" action="#">
								<div class="field">
									<label for="name">Full Name</label>
									<input   type="text" placeholder="Full Name" name="name" id="name" />
								</div>
								<div class="field">
									<label for="email">E-Mail</label>
									<input  type="email" placeholder="E-Mail"  name="email" id="email" />
								</div>
								<div class="field">
									<label for="ContactNo">Contact No</label>
									<input type="text" placeholder="Contact No" name="ContactNo" id="ContactNo" />
								</div>
								<div class="field">
									<label for="Address">Address</label>
									<input type="text" placeholder="Address" name="Address" id="Address" />
								</div>
								<div class="">
									<label for="Qualificarion">Qualificarions</label>
									<input type="text" placeholder="Qualificarions" name="Qualificarion" id="Qualificarion" />
								</div>
								<div class="field">
									<label for="Experience">Experience</label>
									<input type="text" placeholder="Experience" name="Experience" id="Experience" />
								</div>
								<div class="field">
									<label for="Position Applied">Position Applied</label>
									<input type="text" placeholder="Position Applied" name="Position Applied" id="Position Applied" />
								</div>
								<div class="field">
									<label for="Cover Letter">Cover Letter</label>
									<input type="text" placeholder="Cover Letter" name="Cover Letter" id="Cover Letter" />
								</div>
								<div class="field">
									<label for="Resume ">Resume :</label>
									<input class="text" type="file" name="resume">
								</div>			
								<ul class="actions">
									<li><input type="submit" onclick="info.php" value="Send Message" /></li>
								</ul>
							</form>
						</header>
						<!-- Content -->
						
						<!---	<div class="wrapper">
								<div class="inner">

									<section>
										<h3 class="major">Text</h3>
										<p>This is <b>bold</b> and this is <strong>strong</strong>. This is <i>italic</i> and this is <em>emphasized</em>.
										This is <sup>superscript</sup> text and this is <sub>subscript</sub> text.
										This is <u>underlined</u> and this is code: <code>for (;;) { ... }</code>. Finally, <a href="#">this is a link</a>.</p>
										<h4>Blockquote</h4>
										<blockquote>Fringilla nisl. Donec accumsan interdum nisi, quis tincidunt felis sagittis eget tempus euismod. Vestibulum ante ipsum primis in faucibus vestibulum. Blandit adipiscing eu felis iaculis volutpat ac adipiscing accumsan faucibus. Vestibulum ante ipsum primis in faucibus lorem ipsum dolor sit amet nullam adipiscing eu felis.</blockquote>
										<h4>Preformatted</h4>
										<pre><code>i = 0;

while (!deck.isInOrder()) {
  print 'Iteration ' + i;
  deck.shuffle();
  i++;
}

print 'It took ' + i + ' iterations to sort the deck.';</code></pre>
									</section>

									<section>
										<h3 class="major">Lists</h3>
										<div class="row">
											<div class="6u 12u$(medium)">
												<h4>Unordered</h4>
												<ul>
													<li>Dolor pulvinar etiam.</li>
													<li>Sagittis adipiscing.</li>
													<li>Felis enim feugiat.</li>
												</ul>
												<h4>Alternate</h4>
												<ul class="alt">
													<li>Dolor pulvinar etiam.</li>
													<li>Sagittis adipiscing.</li>
													<li>Felis enim feugiat.</li>
												</ul>
											</div>
											<div class="6u$ 12u$(medium)">
												<h4>Ordered</h4>
												<ol>
													<li>Dolor pulvinar etiam.</li>
													<li>Etiam vel felis viverra.</li>
													<li>Felis enim feugiat.</li>
													<li>Dolor pulvinar etiam.</li>
													<li>Etiam vel felis lorem.</li>
													<li>Felis enim et feugiat.</li>
												</ol>
												<h4>Icons</h4>
												<ul class="icons">
													<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
													<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
													<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
													<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
												</ul>
											</div>
										</div>
										<h4>Actions</h4>
										<div class="row">
											<div class="6u 12u$(medium)">
												<ul class="actions">
													<li><a href="#" class="button special">Default</a></li>
													<li><a href="#" class="button">Default</a></li>
												</ul>
												<ul class="actions small">
													<li><a href="#" class="button special small">Small</a></li>
													<li><a href="#" class="button small">Small</a></li>
												</ul>
												<ul class="actions vertical">
													<li><a href="#" class="button special">Default</a></li>
													<li><a href="#" class="button">Default</a></li>
												</ul>
												<ul class="actions vertical small">
													<li><a href="#" class="button special small">Small</a></li>
													<li><a href="#" class="button small">Small</a></li>
												</ul>
											</div>
											<div class="6u 12u$(medium)">
												<ul class="actions vertical">
													<li><a href="#" class="button special fit">Default</a></li>
													<li><a href="#" class="button fit">Default</a></li>
												</ul>
												<ul class="actions vertical small">
													<li><a href="#" class="button special small fit">Small</a></li>
													<li><a href="#" class="button small fit">Small</a></li>
												</ul>
											</div>
										</div>
									</section>

									<section>
										<h3 class="major">Table</h3>
										<h4>Default</h4>
										<div class="table-wrapper">
											<table>
												<thead>
													<tr>
														<th>Name</th>
														<th>Description</th>
														<th>Price</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Item One</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Two</td>
														<td>Vis ac commodo adipiscing arcu aliquet.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Three</td>
														<td> Morbi faucibus arcu accumsan lorem.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Four</td>
														<td>Vitae integer tempus condimentum.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Five</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="2"></td>
														<td>100.00</td>
													</tr>
												</tfoot>
											</table>
										</div>

										<h4>Alternate</h4>
										<div class="table-wrapper">
											<table class="alt">
												<thead>
													<tr>
														<th>Name</th>
														<th>Description</th>
														<th>Price</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Item One</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Two</td>
														<td>Vis ac commodo adipiscing arcu aliquet.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Three</td>
														<td> Morbi faucibus arcu accumsan lorem.</td>
														<td>29.99</td>
													</tr>
													<tr>
														<td>Item Four</td>
														<td>Vitae integer tempus condimentum.</td>
														<td>19.99</td>
													</tr>
													<tr>
														<td>Item Five</td>
														<td>Ante turpis integer aliquet porttitor.</td>
														<td>29.99</td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="2"></td>
														<td>100.00</td>
													</tr>
												</tfoot>
											</table>
										</div>
									</section>

									<section>
										<h3 class="major">Buttons</h3>
										<ul class="actions">
											<li><a href="#" class="button special">Special</a></li>
											<li><a href="#" class="button">Default</a></li>
										</ul>
										<ul class="actions">
											<li><a href="#" class="button big">Big</a></li>
											<li><a href="#" class="button small">Small</a></li>
										</ul>
										<ul class="actions fit">
											<li><a href="#" class="button fit">Fit</a></li>
											<li><a href="#" class="button special fit">Fit</a></li>
											<li><a href="#" class="button fit">Fit</a></li>
										</ul>
										<ul class="actions fit small">
											<li><a href="#" class="button special fit small">Fit + Small</a></li>
											<li><a href="#" class="button fit small">Fit + Small</a></li>
											<li><a href="#" class="button special fit small">Fit + Small</a></li>
										</ul>
										<ul class="actions">
											<li><a href="#" class="button special icon fa-download">Icon</a></li>
											<li><a href="#" class="button icon fa-download">Icon</a></li>
										</ul>
										<ul class="actions">
											<li><span class="button special disabled">Disabled</span></li>
											<li><span class="button disabled">Disabled</span></li>
										</ul>
									</section>

									<section>
										<h3 class="major">Form</h3>
										<form method="post" action="#">
											<div class="row uniform">
												<div class="6u 12u$(xsmall)">
													<label for="demo-name">Name</label>
													<input type="text" name="demo-name" id="demo-name" value="" />
												</div>
												<div class="6u$ 12u$(xsmall)">
													<label for="demo-email">Email</label>
													<input type="email" name="demo-email" id="demo-email" value="" />
												</div>
												<div class="12u$">
													<label for="demo-category">Category</label>
													<div class="select-wrapper">
														<select name="demo-category" id="demo-category">
															<option value="">-</option>
															<option value="1">Manufacturing</option>
															<option value="1">Shipping</option>
															<option value="1">Administration</option>
															<option value="1">Human Resources</option>
														</select>
													</div>
												</div>
												<div class="4u 12u$(small)">
													<input type="radio" id="demo-priority-low" name="demo-priority" checked>
													<label for="demo-priority-low">Low Priority</label>
												</div>
												<div class="4u 12u$(small)">
													<input type="radio" id="demo-priority-normal" name="demo-priority">
													<label for="demo-priority-normal">Normal Priority</label>
												</div>
												<div class="4u$ 12u$(small)">
													<input type="radio" id="demo-priority-high" name="demo-priority">
													<label for="demo-priority-high">High Priority</label>
												</div>
												<div class="6u 12u$(small)">
													<input type="checkbox" id="demo-copy" name="demo-copy">
													<label for="demo-copy">Email me a copy</label>
												</div>
												<div class="6u$ 12u$(small)">
													<input type="checkbox" id="demo-human" name="demo-human" checked>
													<label for="demo-human">Not a robot</label>
												</div>
												<div class="12u$">
													<label for="demo-message">Message</label>
													<textarea name="demo-message" id="demo-message" rows="6"></textarea>
												</div>
												<div class="12u$">
													<ul class="actions">
														<li><input type="submit" value="Send Message" class="special" /></li>
														<li><input type="reset" value="Reset" /></li>
													</ul>
												</div>
											</div>
										</form>
									</section>

									<section>
										<h3 class="major">Image</h3>
										<h4>Fit</h4>
										<div class="box alt">
											<div class="row uniform">
												<div class="12u$"><span class="image fit"><img src="images/pic08.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic05.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic06.jpg" alt="" /></span></div>
												<div class="4u$"><span class="image fit"><img src="images/pic07.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic07.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic05.jpg" alt="" /></span></div>
												<div class="4u$"><span class="image fit"><img src="images/pic06.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic06.jpg" alt="" /></span></div>
												<div class="4u"><span class="image fit"><img src="images/pic07.jpg" alt="" /></span></div>
												<div class="4u$"><span class="image fit"><img src="images/pic05.jpg" alt="" /></span></div>
											</div>
										</div>
										<h4>Left &amp; Right</h4>
										<p><span class="image left"><img src="images/pic01.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
										<p><span class="image right"><img src="images/pic02.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
									</section>
                                 --->
								</div>
							</div>

					</section>

				<!-- Footer -->
					<!---<section id="footer">
						<div class="inner">
							<h2 class="major">Get in touch</h2>
							<p>Cras mattis ante fermentum, malesuada neque vitae, eleifend erat. Phasellus non pulvinar erat. Fusce tincidunt, nisl eget mattis egestas, purus ipsum consequat orci, sit amet lobortis lorem lacus in tellus. Sed ac elementum arcu. Quisque placerat auctor laoreet.</p>
							<form method="post" action="#">
								<div class="field">
									<label for="name">Name</label>
									<input type="text" name="name" id="name" />
								</div>
								<div class="field">
									<label for="email">Email</label>
									<input type="email" name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="4"></textarea>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send Message" /></li>
								</ul>
							</form>
							<ul class="contact">
								<li class="fa-home">
									Untitled Inc<br />
									1234 Somewhere Road Suite #2894<br />
									Nashville, TN 00000-0000
								</li>
								<li class="fa-phone">(000) 000-0000</li>
								<li class="fa-envelope"><a href="#">information@untitled.tld</a></li>
								<li class="fa-twitter"><a href="#">twitter.com/untitled-tld</a></li>
								<li class="fa-facebook"><a href="#">facebook.com/untitled-tld</a></li>
								<li class="fa-instagram"><a href="#">instagram.com/untitled-tld</a></li>
							</ul>
							<ul class="copyright">
								<li>&copy; Untitled Inc. All rights reserved.</li><li>Design:Eccentric InfoTech </a></li>
							</ul>
						</div>
					</section>-->

			</div>

		<!-- Scripts -->
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>