import 'package:ocp/configs/AppColors.dart';

import 'package:ocp/models/machine.dart';

const List<Machine> machines = [
  Machine(
    name: "Draglines",
    types: const ["Draglines"],
    image: "assets/images/dragline.png",
    color: AppColors.lightTeal,
  ),
  Machine(
    name: "Sondeuses",
    types: const ["Sondeuses"],
    image: "assets/images/drilling.png",
    color: AppColors.lightTeal,
  ),
  Machine(
    name: "Chargeuses",
    types: const ["Chargeuses"],
    image: "assets/images/loader.png",
    color: AppColors.lightTeal,
  ),
  Machine(
    name: "Camions",
    types: const ["Camions"],
    image: "assets/images/miningtruck.png",
    color: AppColors.lightTeal,
  ),
  Machine(
    name: "Bulldozer",
    types: const ["Bulldozer"],
    image: "assets/images/bulldozer.png",
    color: AppColors.lightTeal,
  ),
  Machine(
    name: "Trémie",
    types: const ["Bulldozer"],
    image: "assets/images/tremie.png",
    color: AppColors.lightTeal,
  ),
];
