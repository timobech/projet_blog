<?php
session_start();
include_once('../modeles/Users.class.php');
include_once('../modeles/Article.class.php');
include_once('../modeles/Categorie.class.php');
$i=0;
if(!isset($_GET['error']))
{
	$home=false;
	$access=true;
	if(isset($_GET['action']))
	{
		switch($_GET['action'])
		{
			case 'discon':
			if(isset($_GET['token']) && isset($_SESSION['token'])){
				if($_SESSION['token']==$_GET['token']){
					session_unset(); 
					include_once('../views/index.php');	
				}
				else{
					include_once('../views/error.php');
					die();
				}
				break;
			}
			default: 
				include_once('../views/error.php');
			
		}
	}
	//else
		//include_once('../views/error.php');	
	if(isset($_POST['connect']))
	{
		$hashed_pass = hash('sha512',$_POST['pass']);
		$user_conn = Users::checkUser($_POST['login'],$hashed_pass);
		if($user_conn)
		{
			
			$_SESSION['token'] = uniqid();
			//setcookie('token',$_SESSION['token'],time()+3600);
			$_SESSION['token_time'] = time(); 
			$_SESSION['idUser'] = $user_conn[0]['id_user'];
			$_SESSION['profile'] = $user_conn[0]['profil_type'];
			$_SESSION['login'] = $user_conn[0]['login'];
			$_SESSION['nom'] = htmlspecialchars($user_conn[0]['nom'].' '.$user_conn[0]['prenom']);
			if($_SESSION['profile']==1)
			{
				$categs = Categorie::getList();
				$artcl = Article::getList();
				$users = Users::getList();	
			}
			//echo $_SESSION['token'];
			include_once('../views/index.php');	
		}
		else
		{
			$error_AUTH=true;
			include_once('../views/connect.php');
		}
	}
	if(!isset($_POST['connect']) && !isset($_GET['action']))
	{
		if(isset($_SESSION['profile'])){
		if($_SESSION['profile']==1)
			{
				
				$categs = Categorie::getList();
				$artcl = Article::getList();
				$users = Users::getList();	
			}
		}
		if(!isset($_POST['add_article']))
		{
			include_once('../views/index.php');	
		}
	}
	if(isset($_POST['add_article']))
	{
		if(isset($_SESSION['idUser']))
		{ //echo $type = substr($_FILES['imageArtcl']['type'],6);
			//echo $_FILES['imageArtcl']['type'];
			if ((($_FILES['imageArtcl']['type'] == 'image/gif') || ($_FILES['imageArtcl']['type'] == 'image/jpeg') || ($_FILES['imageArtcl']['type'] == 'image/png')))
			{
				$uploaddir = $_SERVER['DOCUMENT_ROOT'].'/Blog_sri/views/img/';
				$img_name = 'article_img_'.uniqid().'.'.substr($_FILES['imageArtcl']['type'],6);
			    $uploadfile = $uploaddir.$img_name ;
				if (move_uploaded_file($_FILES['imageArtcl']['tmp_name'], $uploadfile)) 
				{
					Article::createNewObject($_POST['titre'],$_POST['Description'],$_SESSION['idUser'],$_POST['categ'][0],$img_name);
					header('Location:../controllers/res.php?article='.$db->lastInsertId());	
				}
				else
				{
					Article::createNewObject($_POST['titre'],$_POST['Description'],$_SESSION['idUser'],$_POST['categ'][0],'default.png');
					header('Location:../controllers/res.php?article='.$db->lastInsertId());	
				}
			}	
		}
			
	}
}
else
{
	$access=true;
	include_once('../views/error.php');
}

//print_r(Users::checkUser('tt','1234'));

?>