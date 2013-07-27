<?php

App::uses('AppController', 'Controller');

class WebsiteController extends AppController {

/**
 * Controller name
 *
 * @var string
 */
	public $name = 'website';

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array('Product', 'Photo', 'Postre');

/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function index() {
	}

	/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function display() {
			$this->redirect('index');
	}

/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function appetizers() {
		
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function ensaladas() {
		
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function platos() {
		
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function rolls() {
		
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function postres() {
		/*$postres = $this->Product->find('count', array('joins' => array(
		    array(
		        'table' => 'postres',
		        'alias' => 'Postre',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Postre.product_id = Product.id')
		    ),
		    array(
		        'table' => 'photos',
		        'alias' => 'Photo',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Photo.product_id = Product.id')
		    )
		)));*/
		//$postres = $this->Product->query("SELECT * FROM products LIMIT 1;");
		//debug($this->Product->query("SELECT *, products.'name', products.description, products.price, photos.thumb, photos.photo FROM products, photos, postres WHERE products.id = photos.product_id = postres.product_id"));

		//die();
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function contact() {
		
	}
}
