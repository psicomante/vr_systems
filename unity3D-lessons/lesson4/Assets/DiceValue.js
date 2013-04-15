public var currentDiceValue = 0;

function Update(){
	var guiObject = GameObject.Find("gui");
	guiObject.guiText.text = currentDiceValue.ToString();
}