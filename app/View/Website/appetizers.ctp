<body id="portfolio">
    <div id="page">
        <?php echo $this->element('topBar');?>

        <header id="header">
            <div class="header_inner wrapper">
                <div class="header_top clearfix">
                    <div id="logo">
                        <a class="logotype" href="index"><img class="logo" src="../img/cabeza.png" alt="Logotype"><img class="logo" src="../img/stars.png" alt="Logotype"></a>  
                    </div>
                    <br/>
                    <nav id="nav">
                        <ul>
                            <li class="appetizersMenu"><a class="appetizersMenu" href="appetizers">Appetizers</a></li>
                            <li class="ensaladasMenu"><a href="ensaladas">Ensaladas</a></li>
                            <li class="platosMenu"><a href="platos">Cocina</a></li>
                            <li class="rollsMenu"><a href="rolls">Sushi Rolls</a></li>
                            <li class="postresMenu"><a href="postres">Postres</a></li>
                        </ul>
                    </nav>
                </div>
            </div>  
        </header>

        <section id="pagetitle">
        	<div class="wrapperoverlay appetizers">
        		<h1><strong>Appetizers</strong><span class="tagline">Exquisitas combinaciones que abrirán tu apetito.</h1>
            </div>
        </section>


        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article class="seperator">
                
                	<ul class="filter">
                        <li><a class="active" href="" data-option-value="*">Todos</a></li>
                        <li><a href="" data-option-value=".ENTRADAS">Entradas</a></li>
                        <li><a href="" data-option-value=".CEVICHES">Ceviches</a></li>
                        <li><a href="" data-option-value=".SOPAS">Sopas</a></li>
                    </ul>
                    
                	<div id="masonry" class="portfolio-entries columns4 clearfix">
                        <?php foreach( $appetizers as $appetizer ): ?>
                            <div class="masonry_item portfolio-entry post <?php echo $appetizer['Appetizer']['0']['type'];?>">
                                <div class="imgoverlay">
                                    <a href="<?php echo $appetizer['Photo']['0']['photo'];?>" class="openfancybox" rel="gallery"><img src="<?php echo $appetizer['Photo']['0']['thumb'];?>" /></a>
                                </div>
                                <div class="portfolio-meta">
                                    <h5><strong><?php echo $appetizer['Product']['name'];?></strong></h5>
                                    <?php 
                                        if($appetizer['Appetizer']['0']['type']=='ENTRADAS'){echo '<span class="portfolio-categories">Entrada</span>';}
                                        else if($appetizer['Appetizer']['0']['type']=='CEVICHES'){echo '<span class="portfolio-categories">Ceviche</span>';}
                                        else if($appetizer['Appetizer']['0']['type']=='SOPAS'){echo '<span class="portfolio-categories">Sopa</span>';}?>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div><!-- END #masonry --> 
                </article>
                       
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->