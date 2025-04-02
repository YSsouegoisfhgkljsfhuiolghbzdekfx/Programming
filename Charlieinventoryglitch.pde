String[] myinventory = {"sword","potion","shield"};
String[] playerInventory = myinventory;

void setup(){

fullScreen();
textSize(40);
}
void displayInventory(){
background(200);
text("Player Inventory: ",50,50);
for(int i=0; i<playerInventory.length; i++){
text("-"+playerInventory[i],50,80+i*30);
}
text("Friend's Inventory:",200,50);
for(int k=0; k<friendInventory[k];k++){
text("-"+friendInventory[k],200,80+k*30);
}
}
