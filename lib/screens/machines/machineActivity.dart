import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ocp/data/machines.dart';
import 'package:ocp/widgets/fab.dart';
import 'package:ocp/widgets/machine_container.dart';
import 'package:ocp/widgets/machine_card.dart';


class machineActivity extends StatefulWidget {
  @override
  _machineActivityState createState() => _machineActivityState();
}

class _machineActivityState extends State<machineActivity> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation = CurvedAnimation(curve: Curves.easeInOut, parent: _controller);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MachineContainer(
            appBar: true,
            children: <Widget>[
              SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Text(
                  "Gestion roduction",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.only(left: 28, right: 28, bottom: 58),
                  itemCount: machines.length,
                  itemBuilder: (context, index) => MachineCard(
                    machines[index],
                    index: index,
                    onPress: () {
                      Navigator.of(context).pushNamed("/Machinemon-info");
                    },
                  ),
                ),
              ),
            ],
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (_, __) {
              return IgnorePointer(
                ignoring: _animation.value == 0,
                child: InkWell(
                  onTap: () {
                    _controller.reverse();
                  },
                  child: Container(
                    color: Colors.black.withOpacity(_animation.value * 0.5),
                  ),
                ),
              );
            },
          ),
        ],
      ),

    );
  }
}
