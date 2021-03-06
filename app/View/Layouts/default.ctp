<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('fujiyama', 'Fujiyama SushiBar & Asian Cuisine');
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->meta('viewport', null, array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0'),false);

		echo $this->Html->css('fonts');
		echo $this->Html->css('style');
		echo $this->Html->css('isotope');
		echo $this->Html->css('flexslider');
		echo $this->Html->css('fancybox');
		echo $this->Html->css('mqueries');


		echo $this->Html->script('jquery-1.7.1.min');
		echo $this->Html->script('jquery.modernizr.min');
		echo $this->Html->script('jquery.isotope.min');
		echo $this->Html->script('jquery.flexslider-min');
		echo $this->Html->script('jquery.easing.1.3');
		echo $this->Html->script('jquery.easing.compatibility');
		echo $this->Html->script('jquery.fancybox.pack');
		echo $this->Html->script('script');
		echo $this->Html->script('loader');


		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
			<section id="bottom">
	        	<div class="bottom_inner wrapperoverlay">
	            	<div class="widget"><h6>Redes Sociales</h6>
	                    <div class="socialmedia">
	                        <a class="facebook" href="https://www.facebook.com/fujiyama.ve" target="_blank"><span>Facebook</span></a>
	                        <a class="twitter" href="https://twitter.com/comefujiyama" target="_blank"><span>Twitter</span></a>
	                        <a class="googleplus" href="#" target="_blank"><span>Google+</span></a>
	                        <a class="linkedin" href="#" target="_blank"><span>Linkedin</span></a>
	                    </div>
	                </div>
	            </div>
	        </section> <!-- END #bottom -->
	            
	        <footer id="footer">
	        	<div class="footer_inner wrapper clearfix">
	            	<div class="column one_third seperator">
	                	<div class="widget">
	                        <h6 class="sectiontitle">Nosotros</h6>
	                        <div id="text-widget">
	                            <p>
	                            Fujiyama Sushi Bar & Asian Cuisine es un restaurante especializado en comida japonesa, creado con la intención de combinar los exóticos sabores de la cocina asiática fusionados con algunas tendencias culinarias propias del mundo occidental. Nuestro objetivo principal es brindar a todos y cada uno de nuestros comensales una experiencia gastronómica única e inolvidable.
	                            </p>
	                            <p>
	                            Fujiyama es la mejor opción para quien desea una experiencia gastronómica única y conocer el sabor de la comida asiática con ese toque personal que nos caracteriza, donde siempre contarán con una atención personal, amable y cálida.
	                            </p>
	                        </div>
	                    </div>
	                </div>
	                
	                <div class="column one_third seperator">
	                    <div class="widget">
	                        <h6 class="sectiontitle">Últimos Tweets</h6>
	                       	<div id="twitter-widget">
	                            <ul class="tweet-list">
	                            	<?php foreach( $tweets as $tweet ): ?>
                            			<li><span class="tweet_time"><a href="https://twitter.com/comefujiyama"><?php echo $tweet['created_at'];?></a></span> <span class="tweet_text"><?php echo $tweet['text'];?></span></li>
                        			<?php endforeach; ?>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	                
	                <div class="column one_third last seperator">
	                	<div class="widget">
	                        <h6 class="sectiontitle">Ubicación</h6>
	                        <div id="twitter-widget">
	                        	<ul class="location-list">
                            		<li>
                            			<p>
	                            			<a href="img/map-VA.jpg" class="openfancybox" rel="mapva">
					                            Calle 2 de la Urbanización Vista Alegre<br>
					                            Edificio Mago, PB, Local 4, Caracas, Venezuela<br>
					                            Teléfonos: (0212)471-1759 // (0212)471-6261
				                            </a>
			                            </p>
                            		</li>
                            		<li>
                            			<p>
                            				<a href="img/map-C.jpg" class="openfancybox" rel="mapc">
					                            Avenida Sur Uno, entre Esquina Madrices<br>
					                            a San Jacinto, Centro Comercial<br>
					                            Galerias Edsan. Mezzanina<br>
					                            Local MZZ-10, Caracas, Venezuela<br>
					                            Teléfonos: (0212)564-2029 // (0212)564-6261
				                            </a>
			                            </p>
                            		</li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	        	</div>  <!-- END .footer_inner -->
	            <div class="footer_bottom clearfix">
	            	<div class="left_float">Todos los derechos reservados © 2013.</div>     
	                <div class="right_float">Diseño y desarrollo web por <a href="http://www.theeinsteincrew.com" target="_blank">TheEinsteinCrew*</a>
	            </div>
	        </footer> <!-- END #footer -->

	        <a href="" class="totop" title="Back to top">ToTop</a>

	    </div> <!-- END #page -->
	</body>
</html>
