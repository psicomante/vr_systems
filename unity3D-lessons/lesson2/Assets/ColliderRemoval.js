#pragma strict

function Start () {

}

function Update () {

}

// destroy the collided object
function OnCollisionEnter(collision:Collision){
	Debug.Log("destroying "+ collision.gameObject.name);
	Destroy(collision.gameObject, 2);
}