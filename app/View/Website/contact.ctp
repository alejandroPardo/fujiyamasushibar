<body id="portfolio">
    <div id="page">
        <?php echo $this->element('topBar');?>

        <header id="header">
            <div class="header_inner wrapper">
            
                <div class="header_top clearfix">
                    <div id="logo" class="left_float">
                        <a class="logotype" href="index"><img src="../img/logo.png" alt="Logotype"></a>
                    </div>
                    
                    <nav id="nav" class="right_float">
                        <ul>
                            <li class="appetizers"><a href="appetizers">Appetizers</a></li>
                            <li class="ensaladas"><a class="active" href="ensaladas">Ensaladas</a></li>
                            <li class="platos"><a href="platos">Cocina</a></li>
                            <li class="rolls"><a href="rolls">Sushi Rolls</a></li>
                            <li class="postres"><a href="postres">Postres</a></li>
                            <li class="contact"><a href="contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>  
        </header>


        <section id="pagetitle">
        	<div class="pagetitle_inner wrapperoverlay">
        		<h2><strong>Contacto</strong><span class="tagline">Let's keep in touch</span></h2>
            </div>
        </section>

           
        <script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>

        <section id="map"></section>

        <script type="text/javascript">
          function mapinitialize() {
        	// FIND YOUR LATITUDE & LONGITUDE  -> http://itouchmap.com/latlong.html  
        	var myLatlng = new google.maps.LatLng(10.487633,-66.947572);
        	var myOptions = {
        	  zoom: 16,
        	  center: myLatlng,
        	  mapTypeId: google.maps.MapTypeId.ROADMAP
        	}
        	var map = new google.maps.Map(document.getElementById("map"), myOptions);
        	
        	var marker = new google.maps.Marker({
        		position: myLatlng, 
        		map: map,
        		title:"Iris Theme"
        	});
        	
          }
          mapinitialize();
        </script>


        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article>
                    <div class="column two_third">
                        <h4><strong>Drop us a message</strong></h4>
                        <form id="contact-form" class="checkform" action="" target="http://www.YOURSITENAME.com/contact_send.php" method="post">
                            <div>	<label for="name" class="req">NAME *</label>
                                    <input type="text" name="name" class="name" value="NAME *" onFocus="if (this.value == 'NAME *') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'NAME *';}"/></div>
                            <div>	<label for="email" class="req">EMAIL *</label>
                                    <input type="text" name="email" class="email" value="EMAIL *" onFocus="if (this.value == 'EMAIL *') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'EMAIL *';}"/></div>
                            <div>	<label for="subject">SUBJECT</label>
                                    <input type="text" name="subject" class="subject" value="SUBJECT" onFocus="if (this.value == 'SUBJECT') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'SUBJECT';}"/></div>        
                            <div>	<label for="message" class="req">MESSAGE *</label>
                                    <textarea name="message" class="message" onFocus="if (this.value == 'MESSAGE *') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'MESSAGE *';}" rows="15" cols="50">MESSAGE *</textarea></div>
                            <div><input class="submit" type="submit" value="Send" name="submit_form" /></div>
                            <input type="hidden" name="fields" value="name,email,subject,message," />
                            <input type="hidden" name="sendto" value="spabrice@gmail.com" />
                            <input type="hidden" name="subject" value="Custom Subject" />
                        </form>
                        <p id="form-note"><span class="error_icon">Error</span><span class="error_message"><strong>Please check your entries!</strong></span></p>
                    </div>
                    
                    <div class="column one_third last">
                        <h4><strong>Contact Info</strong></h4>
                        <p>
                   		<strong>Iris</strong><br />
                        123456 Street Name<br />
                        50000 Sydney
                        </p>
                        <p>
                        Phone: (1800) 765-4321<br />
                        Fax: (1800) 765-4321<br />
                        Website: <a href="">www.yoursitename.com</a><br />
                        Email: <a href="">info@yoursitename.com</a>
                    	</p>
                    </div>
                    <div class="clear"></div>
                    
                </article>
                
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->