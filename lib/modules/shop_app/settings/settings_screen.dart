import 'package:firstapp/modules/shop_app/cubit/shop_cubit.dart';
import 'package:firstapp/modules/shop_app/cubit/shop_states.dart';
import 'package:firstapp/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();

    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) {},
      builder: (context, state) {
        ShopCubit cubit = ShopCubit.get(context);

        if (cubit.userModel != null) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                whiteTextForm(
                  labelText: 'name',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'name can not be empty';
                    }
                    return null;
                  },
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(
                    Icons.person,
                    size: 13,
                  ),
                ),
                const SizedBox(height: 20),
                whiteTextForm(
                  labelText: 'email',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'email can not be empty';
                    }
                    return null;
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(
                    Icons.email,
                    size: 13,
                  ),
                ),
                const SizedBox(height: 20),
                whiteTextForm(
                  labelText: 'phone',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'phone can not be empty';
                    }
                    return null;
                  },
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(
                    Icons.phone,
                    size: 13,
                  ),
                ),
              ],
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
