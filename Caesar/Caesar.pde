//Caesar Encoder
surface.setVisible(false);
String input = "Hello this is a Caesar Cipher!";
int shift = 0;
char modified;
String encoded = "";
for(int i = 0; i < input.length(); i++) {
 int tempshift = shift % 26;
 if (Character.isUpperCase(input.charAt(i))) {
  if (int(input.charAt(i)) + tempshift > 90) {
    tempshift -= 90-int(input.charAt(i));
    modified = char(65+tempshift-1);
  } else {
    modified = char(input.charAt(i) + tempshift);
  }
  encoded = encoded + str(modified);
 } else if (Character.isLowerCase(input.charAt(i))) {
  if (int(input.charAt(i)) + tempshift > 122) {
    tempshift -= 122-int(input.charAt(i));
    modified = char(97+tempshift-1);
  } else {
    modified = char(input.charAt(i) + tempshift);
  }
  encoded = encoded + str(modified);
 } else {
  encoded = encoded + str(input.charAt(i));
 }
}
println("Encoded with shift of " + shift + ":");
println(encoded);