<?php

  namespace App\Http\Controllers;
  use Illuminate\Support\Facades\DB;
  use App\Http\Controllers\Controller;

  session_start();

  if(!isset($_SESSION['is_login'])){
    header('Location: ./');
    exit;
  }

  class makeNewArtClass extends Controller
  {
      /**
       * Show a list of all of the application's users.
       *
       * @return Response
       */
      public function makeNewArt()
      {
          $artNumber = NULL;
          DB::insert('insert into totalart (title, ArtURL, Description,uploaddate,lastloaddate) values (?, ?, ?, ?, ?)',array($_POST['Title'],$_POST['ArtURL'],$_POST['Description'],date("Y-m-d H:i:s"),date("Y-m-d H:i:s")));

          $Sentence3 = "select * from totalart order by artPK desc limit 1";

          $users3 = DB::select(DB::raw($Sentence3));
          foreach($users3 as $user){
              $artNumber=$user->artPK;
          }

          DB::statement('CREATE TABLE '.$artNumber.'workDB (
              number bigint(20) not null auto_increment,
              position char(255) not null,
              userPK bigint(20) not null,
              primary key(number)
            )');

            $Array = $_POST['main'];

            foreach($Array as $v1){
                DB::insert('insert into '.$artNumber.'workDB (userPK, position)
                values (?, ?)',array($v1[0],$v1[1]));
                DB::insert('insert into '.$v1[0].'artDB (artPK)
                values (?)',array($artNumber));
            }
      }
  }

  $A = new makeNewArtClass();
  $A->makeNewArt();

?>