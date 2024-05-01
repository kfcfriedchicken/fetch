<?php
include_once "./models/UserDAO.php";

class UserListAPI extends Controller{

    public function performAction(){
        $userDAO = new UserDAO();
        $users=NULL;
        $id=NULL;

        if(isset($_GET['id'])){
            $id = $_GET['id']; 
            $users=$userDAO->getUser($id);
        }else{
            $users=$userDAO->getUsers();
        }
        echo json_encode($users);
    }

    public function getAuth(){
        return "PUBLIC";
    }

}
?>