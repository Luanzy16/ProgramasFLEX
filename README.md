# Ejercicios en Flex

## Integrantes:
- Luis Sànchez
- David bermudez
- Santiago Ospina
## **1. Contador de Palabras, Líneas y Caracteres**

### **Generar y Compilar**
```bash
flex count.l
gcc lex.yy.c -o count -lfl
```

### **Ejecutar**
```bash
./contador archivo.txt
```

---

## **2. Traductor Simple de Inglés a Español**

### **Generar y Compilar**
```bash
flex traductor.l
gcc lex.yy.c -o traductor -lfl
```

### **Ejecutar**
```bash
./traductor archivo.txt
```

---

## **3. Reconocimiento de Números, Símbolos y Caracteres de una Calculadora**

### **Generar y Compilar**
```bash
flex calculadora.l
gcc lex.yy.c -o calculadora -lfl
```

### **Ejecutar**
```bash
./calculadora
```

---

## **4. Reconocimiento de Tokens Matemáticos**

### **Generar y Compilar**
```bash
flex tokens.l
gcc lex.yy.c -o tokens -lfl
```

### **Ejecutar**
```bash
./tokens
```

---

## **5. Clasificación de Números Complejos**

### **Generar y Compilar**
```bash
flex complejos.l
gcc lex.yy.c -o complejos -lfl
```

### **Ejecutar**
```bash
./complejos
```

---

### **Posibles Errores y Soluciones**

- **`flex: command not found`** → Asegúrate de que `flex` está instalado.
- **`gcc: command not found`** → Instala `gcc` (`sudo apt install gcc`).
- **`lfl: No such file or directory`** → Instala `libfl-dev` (`sudo apt install libfl-dev`).

---
