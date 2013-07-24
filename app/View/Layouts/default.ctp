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

$cakeDescription = __d('cake_dev', 'Fujiyama SushiBar & Asian Cuisine');
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
<body>
			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
</body>
</html>
