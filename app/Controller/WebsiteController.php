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
	public $uses = array('Product', 'Photo', 'Postre', 'User');

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
		$appetizers = $this->Product->find('all', array('joins' => array(
		    array(
		        'table' => 'appetizers',
		        'alias' => 'Appetizer',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Appetizer.product_id = Product.id')
		    ),
		    array(
		        'table' => 'photos',
		        'alias' => 'Photo',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Photo.product_id = Product.id')
		    )
		)));
		//debug($appetizers);
		//die();
		$this->set('appetizers', $appetizers);
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function ensaladas() {
		$ensaladas = $this->Product->find('all', array('joins' => array(
		    array(
		        'table' => 'ensaladas',
		        'alias' => 'Ensalada',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Ensalada.product_id = Product.id')
		    ),
		    array(
		        'table' => 'photos',
		        'alias' => 'Photo',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Photo.product_id = Product.id')
		    )
		)));
		//debug($ensaladas);
		//die();
		$this->set('ensaladas', $ensaladas);
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function platos() {
		$platos = $this->Product->find('all', array('joins' => array(
		    array(
		        'table' => 'platos',
		        'alias' => 'Plato',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Plato.product_id = Product.id')
		    ),
		    array(
		        'table' => 'photos',
		        'alias' => 'Photo',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Photo.product_id = Product.id')
		    )
		)));
		//debug($platos);
		//die();
		$this->set('platos', $platos);
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function rolls() {
		$rolls = $this->Product->find('all', array('joins' => array(
		    array(
		        'table' => 'rolls',
		        'alias' => 'Roll',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Roll.product_id = Product.id')
		    ),
		    array(
		        'table' => 'photos',
		        'alias' => 'Photo',
		        'type' => 'inner',
		        'foreignKey' => 'product_id',
		        'conditions'=> array('Photo.product_id = Product.id')
		    )
		)));
		//debug($rolls);
		//die();
		$this->set('rolls', $rolls);
	}
/**
 * Displays a view
 *
 * @param mixed What page to display
 * @return void
 */
	public function postres() {
		$postres = $this->Product->find('all', array('joins' => array(
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
		)));
		//debug($postres);
		//die();
		$this->set('postres', $postres);
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
