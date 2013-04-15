#pragma strict

var ball:Rigidbody;

function FixedUpdate () {
	// mouse click = left
	if(Input.GetMouseButtonDown(0)){
		var ballInstance = ScriptableObject.Instantiate(ball, this.transform.position, this.transform.rotation);
		ballInstance.velocity = this.transform.TransformDirection(Vector3(this.transform.localPosition.x, this.transform.localPosition.y, 40));
		Physics.IgnoreCollision(ballInstance.collider, this.collider);
		Debug.Log("mouse click");
	}
}

function Start () {

}

function Update () {

}