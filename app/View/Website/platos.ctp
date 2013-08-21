<body id="portfolio">
    <div id="page">
        <?php //echo $this->element('topBar');?>

        <header id="header">
            <div class="header_inner wrapper">
                <div class="header_top clearfix">
                    <div id="logo">
                        <a class="logotype" href="index"><img class="logo" src="../img/brush.png" alt="Logotype">
                        <!--<img class="stars" src="../img/stars.png" alt="Logotype"></a>-->
                    </div>
                    <nav id="nav">
                        <ul>
                            <li class="appetizersMenu"><a href="appetizers">Appetizers</a></li>
                            <li class="ensaladasMenu"><a href="ensaladas">Ensaladas</a></li>
                            <li class="platosMenu"><a class="platosMenu" href="platos">Cocina</a></li>
                            <li class="rollsMenu"><a href="rolls">Sushi Rolls</a></li>
                            <li class="postresMenu"><a href="postres">Postres</a></li>
                        </ul>
                    </nav>
                </div>
            </div>  
        </header>


        <section id="pagetitle">
        	<div class="wrapperoverlay cocina">
        		<h1><strong>Platos Calientes</strong></h1>
            </div>
        </section>

        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article class="seperator">
                
                	<ul class="filter">
                        <li><a class="active" href="" data-option-value="*">Todos</a></li>
                    </ul>
                    
                	<div id="masonry" class="portfolio-entries columns4 clearfix">
                        <?php foreach( $platos as $plato ): ?>
                            <div class="masonry_item portfolio-entry post">
                                <div class="imgoverlay">
                                    <a href="<?php echo $plato['Photo']['0']['photo'];?>" class="openfancybox" rel="gallery"><img src="<?php echo $plato['Photo']['0']['thumb'];?>" /></a>
                                </div>
                                <div class="portfolio-meta">
                                    <h5><strong><?php echo $plato['Product']['name'];?></strong></h5>
                                    <span class="portfolio-categories">Plato Caliente</span>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div><!-- END #masonry --> 
                </article>
                       
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->