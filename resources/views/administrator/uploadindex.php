<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

if($_SESSION['persongroup'] != "administrator"){
  header('Location: ./');
  exit;
}

class getAlluser extends Controller
{
    public function getUser()
    {
        $insertResult = DB::insert('insert into indexMain (url,artText,updatedate) values (?,?,?)',[$_POST['url'],$_POST['TEXT'],date("Y-m-d H:i:s")]);
    }
}
$A = new getAlluser();
$A->getUser();

?>
