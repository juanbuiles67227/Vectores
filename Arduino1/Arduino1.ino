String usuario = "Miguel\n", clave = "12345\n", usuario_i, clave_i;
int i = 0;
byte a = 0;

void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  if (a == 0) {
    Serial.println("Ingrese el usuario: ");
    a = 1;
  }
  if (Serial.available() > 0) {
    switch (a) {
      case 1:
        usuario_i = Serial.readString();
        if (usuario.equals(usuario_i)) {
          Serial.println("!!! Bienvenido !!!");
          digitalWrite(13, HIGH);
          delay(5000);
          digitalWrite(13, LOW);
          Serial.println("Ingrese la clave: ");
          a = 2;
        }
        break;
      case 2:
        clave_i = Serial.readString();
        if (clave.equals(clave_i)) {
          Serial.println("Ingrese nueva clave: ");
          a = 3;
          i = 0;
        }
        else {
          i++;
          Serial.print("Ha cometido ");
          Serial.print(i);
          Serial.println(" error(es) en la clave.");
          if (i == 3) a = 9;
        }
        break;
      case 3:
        clave = Serial.readString();
        a = 0;
        break;
      default:
        Serial.read();
        Serial.println("Sistema bloqueado!!");
        break;
    }
  }
}
