<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

session_start();

class UserController extends Controller
{
      /**
       * Show a list of all of the application's users.
       *
       * @return Response
       */
      public function getUserData()
      {
        $Sentence = "select * from userinfo where userPK = ".$_SESSION['userPK'];
        $users = DB::select(DB::raw($Sentence));
        foreach($users as $user){
          $GLOBALS['name'] = $user->Name;
          $GLOBALS['career'] = $user->career;
          $GLOBALS['education'] = $user->education;
          $GLOBALS['ProfilePhotoURL'] = $user->ProfilePhotoURL;
        }
        $Sentence = "select * from ".$_SESSION['userPK']."keyword";

        $users2 = DB::select(DB::raw($Sentence));
        $GLOBALS['keyword'] = "";
        foreach($users2 as $usera){
          $a=$usera->keyword;
          $GLOBALS['keyword'].=$a.',';
        }
        $GLOBALS['keyword'] = substr($GLOBALS['keyword'],0,-1);
      }
    }

    $A = new UserController();
    $A->getUserData();

    ?>

    <?php
    if(!isset($_SESSION['is_login'])){
      header('Location: ./');
      exit;
    }
    ?>
    <link rel="stylesheet" type ="text/css" href="css/informationEdit.css">

    <div id = "header">

    </div>

    <div id = "uploadContent">

    이미지<br><br> <div id = "profileImage"></div><br><br><br>

      <div id = "uploadSource">
        프로파일 사진 URL <input type = "text" id = "ProfilePhotoURL" value = "<?= $GLOBALS['ProfilePhotoURL']?>" id = "ProfilePhotoURL"></input><br>
        이름 <input type = "text" id = "name" value = "<?= $GLOBALS['name']?>" id = "name"></input><br>
        경력 <input type = "text" id = "career" value = "<?= $GLOBALS['career']?>" id = "career"></input><br>
        학력 <input type = "text" id = "education" value = "<?= $GLOBALS['education']?>" id = "education"></input><br>

        키워드 <textarea rows="5" id = "keyword" cols="30" name="contents"><?= $GLOBALS['keyword']?></textarea><br>

        <button id="eeddiitt">수정</button>

      </div>
    </div>

    <script type = "text/javascript" src = "js/jquery-3.1.1.min.js"></script>
    <script type = "text/javascript" src = "js/informationEdit.js"></script>
