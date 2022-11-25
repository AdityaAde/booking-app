import 'package:booking_app/presentation/pages/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingImages extends StatelessWidget {
  const OnboardingImages({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
      child: PageView.builder(
        itemCount: cubit.state.onboardingList.length,
        itemBuilder: (c, i) => Image.asset(
          cubit.state.onboardingList[i].image ?? '',
        ),
        onPageChanged: (index) => cubit.swiping(index),
      ),
    );
  }
}
