import 'package:flutter/material.dart';

Container dropDownMenu() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25), // Adjust radius as needed
      //border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
    ),
    child: const DropdownMenu(
      dropdownMenuEntries: <DropdownMenuEntry<String>>[
        DropdownMenuEntry(
          value: "Saudi arabia",
          label: "Saudi arabia ",
        ),
        DropdownMenuEntry(
            value: "United arab emirates", label: "United arab emirates"),
        DropdownMenuEntry(value: "Qatar", label: "Qatar")
      ],
      hintText: "Country",
      width: 330,
    ),
  );
}
