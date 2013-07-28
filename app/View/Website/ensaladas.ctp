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
                            <li class="appetizersMenu"><a href="appetizers">Appetizers</a></li>
                   	    	<li class="ensaladasMenu"><a class="active" href="ensaladas">Ensaladas</a></li>
                            <li class="platosMenu"><a href="platos">Cocina</a></li>
                            <li class="rollsMenu"><a href="rolls">Sushi Rolls</a></li>
                      		<li class="postresMenu"><a href="postres">Postres</a></li>
                        </ul>
                    </nav>
                </div>
            </div>	
        </header>


        <section id="pagetitle">
        	<div class="wrapperoverlay ensaladas">
        		<h1><strong>Ensaladas</strong><span class="tagline">Disfruta de nuestros sabores con pocas calorías</h1>
            </div>
        </section>


        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article class="seperator">
                
                	<ul class="filter">
                        <li><a class="active" href="" data-option-value="*">Todos</a></li>
                        <li><a href="" data-option-value=".ENSALADA">Ensaladas</a></li>
                        <li><a href="" data-option-value=".TEMAKI">Temakis</a></li>
                        <li><a href="" data-option-value=".NIGIRI">Nigiris</a></li>
                    </ul>
                    
                	<div id="masonry" class="portfolio-entries columns4 clearfix">
                        <?php foreach( $ensaladas as $ensalada ): ?>
                            <div class="masonry_item portfolio-entry post <?php echo $ensalada['Ensalada']['0']['type'];?>">
                                <div class="imgoverlay">
                                    <a href="<?php echo $ensalada['Photo']['0']['photo'];?>" class="openfancybox" rel="gallery"><img src="<?php echo $ensalada['Photo']['0']['thumb'];?>" /></a>
                                </div>
                                <div class="portfolio-meta">
                                    <h5><strong><?php echo $ensalada['Product']['name'];?></strong></h5>
                                    <?php 
                                        if($ensalada['Ensalada']['0']['type']=='ENSALADA'){echo '<span class="portfolio-categories">Ensalada</span>';}
                                        else if($ensalada['Ensalada']['0']['type']=='TEMAKI'){echo '<span class="portfolio-categories">Temaki</span>';}
                                        else if($ensalada['Ensalada']['0']['type']=='NIGIRI'){echo '<span class="portfolio-categories">Nigiri</span>';}?>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div><!-- END #masonry --> 
                </article>
                       
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->