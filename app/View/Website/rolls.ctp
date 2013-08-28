<body id="portfolio">
    <div id="page">
        <?php //echo $this->element('topBar');?>

        <header id="header">
            <div class="header_inner wrapper">
                <div class="header_top clearfix">
                    <div id="logo">
                        <a class="logotype" href="index"><img class="logo" src="img/brush.png" alt="Logotype"></a>
                        <!--<img class="stars" src="../img/stars.png" alt="Logotype"></a>-->
                    </div>
                    <nav id="nav">
                        <ul>
                            <li class="appetizersMenu"><a href="appetizers">Appetizers</a></li>
                            <li class="ensaladasMenu"><a href="ensaladas">Ensaladas</a></li>
                            <li class="platosMenu"><a href="platos">Cocina</a></li>
                            <li class="rollsMenu"><a class="rollsMenu" href="rolls">Sushi Rolls</a></li>
                            <li class="postresMenu"><a href="postres">Postres</a></li>
                        </ul>
                    </nav>
                </div>
            </div>  
        </header>


        <section id="pagetitle">
        	<div class="wrapperoverlay rolls">
        		<h1><strong>Sushi Rolls</strong></h1>
            </div>
        </section>


        <section id="main">
            <div class="main_inner wrapper clearfix">
                
                <article class="seperator">
                
                	<ul class="filter">
                        <li><a class="active" href="" data-option-value="*">Todos</a></li>
                        <li><a href="" data-option-value=".SARROZ">Sin Arroz</a></li>
                        <li><a href="" data-option-value=".TEMPSARROZ">Tempurizados Sin Arroz</a></li>
                        <li><a href="" data-option-value=".TEMP">Tempurizados</a></li>
                        <li><a href="" data-option-value=".TEMPDENTRO">Tempurizados Por Dentro</a></li>
                        <li><a href="" data-option-value=".TRADICIONALES">Tradicionales</a></li>
                    </ul>
                	<div id="masonry" class="portfolio-entries columns4 clearfix">
                        <?php foreach( $rolls as $roll ): ?>
                            <div class="masonry_item portfolio-entry post <?php echo $roll['Roll']['0']['type'];?>">
                                <div class="imgoverlay">
                                    <a href="<?php echo $roll['Photo']['0']['photo'];?>" class="openfancybox" rel="gallery"><img src="<?php echo $roll['Photo']['0']['thumb'];?>" /></a>
                                </div>
                                <div class="portfolio-meta">
                                    <h5><strong><?php echo $roll['Product']['name'];?></strong></h5>
                                    <?php 
                                        if($roll['Roll']['0']['type']=='SARROZ'){echo '<span class="portfolio-categories">Sin Arroz</span>';}
                                        else if($roll['Roll']['0']['type']=='TEMPSARROZ'){echo '<span class="portfolio-categories">Tempurizado Sin Arroz</span>';}
                                        else if($roll['Roll']['0']['type']=='TEMP'){echo '<span class="portfolio-categories">Tempurizado</span>';}
                                        else if($roll['Roll']['0']['type']=='TEMPDENTRO'){echo '<span class="portfolio-categories">Tempurizado Por Dentro</span>';}
                                        else if($roll['Roll']['0']['type']=='TRADICIONALES'){echo '<span class="portfolio-categories">Tradicional</span>';}?>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div><!-- END #masonry --> 
                </article>
                       
        	</div> <!-- END #main_inner -->     
        </section> <!-- END #main -->