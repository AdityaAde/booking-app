import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/theme.dart';
import '../../../widget/widget.dart';
import '../welcome_cubit.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.watch<WelcomeCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: cubit.handleBtnExplore,
              text: 'Explore',
              type: PrimaryButtonType.type3,
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: cubit.handleBtnLogin,
              text: 'Login',
              type: SecondaryType.type3,
            ),
          ),
        ],
      ),
    );
  }
}
