import 'package:flutter/material.dart';
import 'package:heyyoumarket/presentation/auth/register/register_viewmodel.dart';
import 'package:heyyoumarket/presentation/components/heyyou_button.dart';
import 'package:heyyoumarket/presentation/components/heyyou_text_form_field.dart';

class RegisterContent extends StatelessWidget {
  final RegisterViewmodel vm;
  const RegisterContent(this.vm, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50), // Añade un espaciado superior
              const Text(
                'Registrarse',
                style: TextStyle(
                  fontFamily: 'heyam',
                  fontSize: 60,
                  color: Color.fromARGB(255, 0, 204, 102),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nombre De Usuario',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Nombre De Usuario',
                errorText: vm.state.userNames.error,
                icon: Icons.email_rounded,
                onChange: (value) {
                  vm.changeUserName(value);
                },
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tu Correo',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu Correo',
                errorText: vm.state.email.error,
                icon: Icons.email_rounded,
                onChange: (value) {
                  vm.changeEmail(value);
                },
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sexo',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              _buildGenderField(vm),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fecha de Nacimiento',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              _buildDateOfBirthField(context, vm),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agrega tu contraseña',
                  style: TextStyle(fontFamily: 'Feather Bold', fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              HeyYouTextFormField(
                'Tu contraseña',
                errorText: vm.state.password.error,
                icon: Icons.lock,
                isPassword: true,
                onChange: (value) {
                  vm.changePassword(value);
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: HeyYouButton(
                  texto: 'Registrarse',
                  onPressed: () {
                    vm.register();
                  },
                  color: const Color.fromARGB(255, 0, 204, 102),
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: HeyYouButton(
                      iconPath: 'assets/img/google.png',
                      fSize: 20,
                      pWith: 5,
                      texto: 'Registrarse con google',
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: HeyYouButton(
                      iconPath: 'assets/img/facebook.png',
                      fSize: 20,
                      pWith: 5,
                      texto: 'Registrarse con facebook',
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes cuenta?',
                    style: TextStyle(
                      fontFamily: 'Feather Bold',
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontFamily: 'Feather Bold',
                        fontSize: 14,
                        color: Color.fromARGB(255, 0, 153, 77),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Añade un espaciado inferior
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenderField(RegisterViewmodel vm) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(40, 0, 204, 102),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          errorText:
              (vm.state.gender.error != '') ? vm.state.gender.error : null,
          filled: true,
          fillColor: Colors.transparent,
        ),
        items: const [
          DropdownMenuItem(value: 'Hombre', child: Text('Hombre')),
          DropdownMenuItem(value: 'Mujer', child: Text('Mujer')),
        ],
        onChanged: (value) {
          vm.changeGender(value!);
        },
        onSaved: (value) {
          vm.changeGender(value!);
        },
        icon: Icon(Icons.arrow_drop_down, color: Colors.grey.shade400),
      ),
    );
  }

  Widget _buildDateOfBirthField(BuildContext context, RegisterViewmodel vm) {
    return TextFormField(
      readOnly: true,
      cursorColor: const Color.fromARGB(255, 0, 204, 102),
      decoration: InputDecoration(
        hintText: 'Selecciona tu fecha de nacimiento',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Feather Bold',
          fontSize: 14,
        ),
        filled: true,
        fillColor: const Color.fromARGB(40, 0, 204, 102),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromARGB(255, 0, 204, 102),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.calendar_today, color: Colors.grey.shade400),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if (pickedDate != null) {
          vm.changeDatebirth(pickedDate.toString().split(' ')[0]);
        }
      },
    );
  }
}
