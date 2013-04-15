public var faceValue = 0;

function OnTriggerEnter() {
	diceObject = GameObject.Find("Dice");
	diceValueComponent = diceObject.GetComponent("DiceValue");
	diceValueComponent.currentDiceValue = faceValue;
	
	Debug.Log(faceValue);
}