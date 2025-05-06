import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool mostrarLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondo_login.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hardware.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => mostrarLogin = true),
                        child: Column(
                          children: [
                            Text(
                              "Iniciar Sesión",
                              style: TextStyle(
                                color:
                                    mostrarLogin
                                        ? Colors.white
                                        : Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => mostrarLogin = false),
                        child: Column(
                          children: [
                            Text(
                              "Registrarme",
                              style: TextStyle(
                                color:
                                    !mostrarLogin
                                        ? Colors.white
                                        : Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  mostrarLogin
                      ? _formularioIniciarSesion()
                      : _formularioRegistrar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _formularioIniciarSesion() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.email, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Correo Electrónico:",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 8),

        const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Ingresa tu correo",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        const Row(
          children: [
            Icon(Icons.lock, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Contraseña:",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 8),

        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Ingresa tu contraseña",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (_) => AlertDialog(
                      title: const Text("Inicio de sesión"),
                      content: const Text("Iniciaste sesión correctamente."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF051D3D),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            child: const Text(
              "Iniciar Sesión",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 15),

        Center(
          child: TextButton(
            onPressed: () {},

            child: const Text(
              "¿Olvidaste tu contraseña?",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _formularioRegistrar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.person, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Nombre completo:",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 8),

        const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Ingresa tu nombre",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        const Row(
          children: [
            Icon(Icons.email, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Correo Electrónico:",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 8),

        const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Ingresa tu correo",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        const Row(
          children: [
            Icon(Icons.lock, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "Contraseña:",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),

        const SizedBox(height: 8),

        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Crea una contraseña",
            border: OutlineInputBorder(),
          ),
        ),

        const SizedBox(height: 20),

        Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (_) => AlertDialog(
                      title: const Text("Registro"),
                      content: const Text("Te registraste correctamente."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF051D3D),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
            child: const Text(
              "Registrarme",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

// HACEEE EL EFECTO DE LA OLAAAAAAAAAAAAAAAA
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 80);

    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2, size.height - 60);

    final secondControlPoint = Offset(size.width * 3 / 4, size.height - 140);
    final secondEndPoint = Offset(size.width, size.height - 80);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
