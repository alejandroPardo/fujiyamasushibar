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

	function beforeFilter() {
		$tw;
		$periods = array("segundo", "minuto", "hora", "dia", "semana", "mes", "año", "decada");
	    $lengths = array("60","60","24","7","4.35","12","10");
		$tweets = Set::reverse($this->Twitter->OAuth->get('https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=comefujiyama&count=3', array()));
		$i=0;
		foreach ($tweets as $tweet) {
			if($tweet['in_reply_to_user_id_str']==null){
				$now = time();
		    	$unix_date = strtotime($tweet['created_at']);
		    	
			    if($now > $unix_date) {   
			        $difference     = $now - $unix_date;
			        $tense         = "Hace";
			        
			    }
			    
			    for($j = 0; $difference >= $lengths[$j] && $j < count($lengths)-1; $j++) {
			        $difference /= $lengths[$j];
			    }
			    
			    $difference = round($difference);
			    
			    if($difference != 1) {
			    	if($periods[$j]=='mes'){
			    		$periods[$j].= "e";
			    	}
			        $periods[$j].= "s";
			    }

				$tw[$i]['created_at'] = "{$tense} $difference $periods[$j]";
				$tw[$i]['text'] = $tweet['text'];
				$i++;
			}
		}
		$this->set('tweets', $tw);
	}

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
