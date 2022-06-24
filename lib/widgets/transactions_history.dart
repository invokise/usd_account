import 'package:flutter/material.dart';

class TransactionsHistoryWidget extends StatefulWidget {
  const TransactionsHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionsHistoryWidget> createState() =>
      _TransactionsHistoryWidgetState();
}

class _TransactionsHistoryWidgetState extends State<TransactionsHistoryWidget> {
  List<DropdownMenuItem<String>> get dropDownMoneyItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem<String>(
        value: 'USD Dollar',
        child: Text('USD Dollar'),
      ),
      DropdownMenuItem<String>(
        value: 'USD Dollar2',
        child: Text('USD Dollar2'),
      ),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownAllItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem<String>(
        value: 'All',
        child: Text(
          'All',
        ),
      ),
      DropdownMenuItem<String>(
        value: 'All2',
        child: Text(
          'All2',
        ),
      ),
    ];
    return menuItems;
  }

  String? val1 = 'USD Dollar';
  String? val2 = 'All';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 14, 14, 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transactions History',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonTheme(
              alignedDropdown: true,
              child: InputDecorator(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade800,
                      width: 1.0,
                    ),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isDense: true,
                    style: const TextStyle(color: Colors.white),
                    dropdownColor: const Color.fromARGB(255, 14, 14, 16),
                    value: val1,
                    items: dropDownMoneyItems,
                    onChanged: (val) {
                      val1 = val;
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey.shade800,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          isDense: true,
                          style: const TextStyle(color: Colors.white),
                          dropdownColor: const Color.fromARGB(255, 14, 14, 16),
                          value: val2,
                          items: dropdownAllItems,
                          onChanged: (val) {
                            val2 = val;
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 14, 14, 16),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.grey.shade800, width: 1.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.calendar_today,
                      color: Colors.white30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
