import 'package:coach_ui/models/coach.dart';

class CoachBrain {
  final List<Coach> _coachBrain = [
    Coach(
      name: 'Asha',
      status: 'Away',
      index: 1,
      imageURL:
          'https://imgs.search.brave.com/5A8g6KEEs4ClzfPO27qAXfXQq8zlrqyVZX8haErxhRM/rs:fit:808:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC43/VlRoSHUyVlM3NmpG/dk41XzVnbmxnSGFF/VyZwaWQ9QXBp',
    ),
    Coach(
      name: 'Tom',
      status: 'Away',
      index: 2,
      imageURL:
          'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
    ),
    Coach(
      name: 'Salma',
      status: 'Away',
      index: 3,
      imageURL:
          'https://imgs.search.brave.com/kboNBT23WU5LO5btPsJCrbZ6eGOOFr-xDfEQwyYDPP8/rs:fit:316:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC43/NXZsLVRDdXNEZDJj/cXEyYko2WlJnSGFM/RyZwaWQ9QXBp',
    ),
    Coach(
      name: 'Zaynab',
      status: 'Available',
      index: 4,
      imageURL:
          'https://imgs.search.brave.com/pkJb5U4raB0lOFKFr4KbqXAzC35fsR7qLpdKjM0fAFI/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5P/R2M4bm1kTGU0dGcz/MEhNcXFFTlNnSGFF/SyZwaWQ9QXBp',
    ),
    Coach(
      name: 'Hani',
      status: 'Away',
      index: 5,
      imageURL:
          'https://imgs.search.brave.com/gPLCfjEDjsQ3UEAs6Cq-PWt9rVHs_0l5buWec6jfmfw/rs:fit:316:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5a/dmhLc3BLdHQ5aEhV/SlViakswZzRBSGFM/SCZwaWQ9QXBp',
    ),
    Coach(
      name: 'Mina',
      status: 'Available',
      index: 6,
      imageURL:
          'https://imgs.search.brave.com/7PvN8f1fzeB61bdUYkLSBDdRBBMk_r6ilQTGvOpzuns/rs:fit:316:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5z/dVpsbWRMQUx6OWkz/aWJibDVYWGVRSGFM/SCZwaWQ9QXBp',
    ),
  ];

  String getCoachName(int index) {
    return _coachBrain[index].name;
  }

  String getCoachStatus(int index) {
    return _coachBrain[index].status;
  }

  String getCoachImage(int index) {
    return _coachBrain[index].imageURL;
  }

  int getCoachIndex(int index) {
    return _coachBrain[index].index;
  }

  int getLength() {
    return _coachBrain.length;
  }
}
