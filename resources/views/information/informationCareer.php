<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

session_start();

if(!isset($_SESSION['is_login'])){
  header('Location: ./');
  exit;
}

class updateInformation extends Controller
{
      /**
       * Show a list of all of the application's users.
       * $_POST['start_date']."   ".$_POST['end_date'];
       * @return Response
       */
      public function updateInformationData()
      {
          $Sentence = "insert into userExperience (userPK, Organization, Position, StartDate, EndDate, Explainn)
          values ('".$_SESSION['userPK']."' , '".$_POST['exOrganization']."', '".$_POST['exPosition']."' , '".$_POST['start_date']."' , '".$_POST['end_date']."' , '".$_POST['explain']."')";

          $DBRun = DB::insert(DB::raw($Sentence));
      }
}
  $A = new updateInformation();
  $A->updateInformationData();
?>
