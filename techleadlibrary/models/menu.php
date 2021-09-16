<?php
class Menu extends model {
     
     public function getMenu() {
     	  $sql = array();

     	  $sql ="SELECT * FROM menu";
     	  $sql - $this->db->query($sql);

     	  if(sql->rowCount() > 0) {
                   $array = sql->fetchAll();


     	  }

          
     	  return $array;

     }

}
