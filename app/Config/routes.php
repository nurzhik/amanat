<?php

	Router::connect('/admin/users/:action', array('controller' => 'users','admin' => true));
	Router::connect('/admin', array('controller' => 'pages', 'action' => 'welcome', 'admin' => true));
	Router::connect('/admin/doctors', array('controller' => 'users', 'action' => 'doctors','admin' => true));
	Router::connect('/admin/doctors/edit/*', array('controller' => 'users', 'action' => 'doctors_edit','admin' => true));
	Router::connect('/feedback', array('controller' => 'feedbacks', 'action' => 'index'));
	Router::connect('/page/*', array('controller' => 'pages', 'action' => 'index'));
	Router::connect('/news', array('controller' => 'news', 'action' => 'index'));
	Router::connect('/news/view/*', array('controller' => 'news', 'action' => 'view'));
	Router::connect('/', array('controller' => 'pages', 'action' => 'home'));
	Router::connect('/contacts', array('controller' => 'pages', 'action' => 'contacts'));
	Router::connect('/registration_page', array('controller' => 'pages', 'action' => 'registration_page'));
	Router::connect('/partners', array('controller' => 'pages', 'action' => 'partners'));
	Router::connect('/about', array('controller' => 'pages', 'action' => 'about'));
	Router::connect('/chat', array('controller' => 'chats', 'action' => 'index'));
	Router::connect('/:language/users/forgetpwd/*', 
		array('controller' => 'users', 'action' => 'forgetpwd'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/registration', 
		array('controller' => 'users', 'action' => 'registration'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/login', 
		array('controller' => 'users', 'action' => 'login'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/cabinet', 
		array('controller' => 'users', 'action' => 'cabinet'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/cars', 
		array('controller' => 'users', 'action' => 'cars'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/my_turn', 
		array('controller' => 'users', 'action' => 'my_turn'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/my_questionnaires', 
		array('controller' => 'users', 'action' => 'my_questionnaires'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/my_question/*', 
		array('controller' => 'users', 'action' => 'my_question'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/doccabinet', 
		array('controller' => 'users', 'action' => 'doccabinet'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/users/editdoccabinet', 
		array('controller' => 'users', 'action' => 'editdoccabinet'),
		array('language' => '[a-z]{2}')
	);
	
	Router::connect('/:language/news', 
		array('controller' => 'news', 'action' => 'index'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/news/view/*', 
		array('controller' => 'news', 'action' => 'view'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/albums', 
		array('controller' => 'albums', 'action' => 'index'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/albums/*', 
		array('controller' => 'albums', 'action' => 'view'),
		array('language' => '[a-z]{2}')
	);

	Router::connect('/:language/page/*', 
		array('controller' => 'pages', 'action' => 'index'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language', 
		array('controller' => 'pages', 'action' => 'home'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/chat', 
		array('controller' => 'pages', 'action' => 'chat'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/registration_page', 
		array('controller' => 'pages', 'action' => 'registration_page'),
		array('language' => '[a-z]{2}')
	);
	
	Router::connect('/:language/search', 
		array('controller' => 'search', 'action' => 'index'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/partners', 
		array('controller' => 'pages', 'action' => 'partners'),
		array('language' => '[a-z]{2}')
	);
	Router::connect('/:language/about', 
		array('controller' => 'pages', 'action' => 'about'),
		array('language' => '[a-z]{2}')
	);

/**
 * ...and connect the rest of 'Pages' controller's URLs.
 */

/**
 * Load all plugin routes. See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
	CakePlugin::routes();

/**
 * Load the CakePHP default routes. Only remove this if you do not want to use
 * the built-in default routes.
 */
	require CAKE . 'Config' . DS . 'routes.php';
