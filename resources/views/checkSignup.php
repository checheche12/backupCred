<?php

  namespace App\Http\Controllers;

  use Illuminate\Support\Facades\DB;
  use App\Http\Controllers\Controller;

  class UserController extends Controller
  {
      /**
       * Show a list of all of the application's users.
       *
       * @return Response
       */
      public function makeNewUser()
      {
          $sameEmail = 0;
          $userNumber = 0;

            $users = DB::select(DB::raw("select * from userinfo where Email = '".$_POST['emailemail']."'" ));
            $sameEmail = empty($users);

            // 비어있다면 실행 안비어 있으면 에러 발생
            //Certification 항목은 본디 0으로 하고 인증 후에 1로 바꿔야하지만 임시로 일단 무조건 1로 생성되게 한다
            //이메일 인증을 구현할때 바꿀 것이다.
          if($sameEmail){
              DB::insert('insert into userinfo (Email, Password, Name, Certification) values (?, ?, ?, ?)',[$_POST['emailemail'],$_POST['pwpw'],$_POST['namename'],1]);

              $users = DB::select(DB::raw("select * from userinfo where Email = '".$_POST['emailemail']."'" ));
              foreach($users as $user){
                  $userNumber=$user->userPK;
              }

              DB::statement('CREATE TABLE '.$userNumber.'artDB (
                  number bigint(20) not null auto_increment,
                  artPK bigint(20) not null,
                  primary key(number)
                )');
          }
          else{
              echo "이미 존재하는 회원 email 입니다.";
          }
          echo "3초뒤에 메인 화면으로 이동한다./n";
          echo "<script type='text/javascript'>setTimeout(function(){
              document.location.href='./';
          },3000);</script>";
      }
  }

  $A = new UserController();
  $A->makeNewUser();

 ?>