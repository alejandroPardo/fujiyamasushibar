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
                   	    	<li class="ensaladas"><a href="ensaladas">Ensaladas</a></li>
                            <li class="platos"><a href="platos">Cocina</a></li>
                            <li class="rolls"><a class="active" href="rolls">Sushi Rolls</a></li>
                      		<li class="postres"><a href="postres">Postres</a></li>
                            <li class="contact"><a href="contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>	
        </header>


        <section id="pagetitle">
        	<div class="pagetitle_inner wrapperoverlay">
        		<h2><strong>Sushi Rolls</strong><span class="tagline">aqui va cualquier vaina</h2>
            </div>
        </section>


        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article class="seperator">
                
                	<ul class="filter">
                        <li><a class="active" href="" data-option-value="*">Todos</a></li>
                        <li><a href="" data-option-value=".sarroz">Sin Arroz</a></li>
                        <li><a href="" data-option-value=".tempsarroz">Tempurizados Sin Arroz</a></li>
                        <li><a href="" data-option-value=".temp">Tempurizados</a></li>
                        <li><a href="" data-option-value=".tempdentro">Tempurizados Por Dentro</a></li>
                        <li><a href="" data-option-value=".tradicionales">Tradicionales</a></li>
                    </ul>
                    
                	<div id="masonry" class="portfolio-entries columns4 clearfix">
                    	<div class="masonry_item portfolio-entry post sarroz">
                            <div class="imgoverlay">
                                <a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><img src="../img/thumb.jpg" /></a>
                            </div>
                            <div class="portfolio-meta">
                            	<h5><a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><strong>Banana Tempura</strong></a></h5>
                                <span class="portfolio-categories">Sin Arroz</span>
                            </div>
                      	</div>
                        <div class="masonry_item portfolio-entry post tempsarroz">
                            <div class="imgoverlay">
                                <a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><img src="../img/thumb.jpg" /></a>
                            </div>
                            <div class="portfolio-meta">
                                <h5><a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><strong>Banana Tempura</strong></a></h5>
                                <span class="portfolio-categories">Tempurizados Sin Arroz</span>
                            </div>
                        </div>
                        <div class="masonry_item portfolio-entry post temp">
                            <div class="imgoverlay">
                                <a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><img src="../img/thumb.jpg" /></a>
                            </div>
                            <div class="portfolio-meta">
                                <h5><a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><strong>Banana Tempura</strong></a></h5>
                                <span class="portfolio-categories">Tempurizados</span>
                            </div>
                        </div>
                        <div class="masonry_item portfolio-entry post tempdentro">
                            <div class="imgoverlay">
                                <a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><img src="../img/thumb.jpg" /></a>
                            </div>
                            <div class="portfolio-meta">
                                <h5><a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><strong>Banana Tempura</strong></a></h5>
                                <span class="portfolio-categories">Tempurizados Por Dentro</span>
                            </div>
                        </div>
                        <div class="masonry_item portfolio-entry post tradicionales">
                            <div class="imgoverlay">
                                <a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><img src="../img/thumb.jpg" /></a>
                            </div>
                            <div class="portfolio-meta">
                                <h5><a href="../img/banana-tempura.jpg" class="openfancybox" rel="gallery"><strong>Banana Tempura</strong></a></h5>
                                <span class="portfolio-categories">Tradicionales</span>
                            </div>
                        </div>
                    </div><!-- END #masonry -->	
                </article>
                       
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->